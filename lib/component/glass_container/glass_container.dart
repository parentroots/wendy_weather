import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double height;
  final double width;
  final double blurRadius;
  final double borderRadius;
  final Widget child;
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;

  const GlassContainer({
    super.key,
    required this.height,
    required this.width,
    this.blurRadius = 0.02,
    this.borderRadius = 0.3,
    required this.child,
    this.leftPadding = 10,
    this.rightPadding = 10,
    this.topPadding = 10,
    this.bottomPadding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.only(
            left: leftPadding,
            right: rightPadding,
            bottom: bottomPadding,
            top: topPadding,
          ),
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: blurRadius),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              width: 1.5,
              color: Colors.white.withValues(alpha: borderRadius),
            ),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
