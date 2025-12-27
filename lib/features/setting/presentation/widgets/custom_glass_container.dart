
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomGlassContainer extends StatelessWidget {
  final double width;
  final double? height;
  final double borderRadius;
  final Widget child;
  final EdgeInsetsGeometry padding;

  const CustomGlassContainer({
    super.key,
    required this.child,
    this.width = double.infinity,
    this.height,
    this.borderRadius = 20.0,
    this.padding = const EdgeInsets.all(16.0),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1), // translucent glass color
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}

