import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;
  final double containerBorderRadius;
  final VoidCallback? onTap;
  final double roundedBorder;
  final double middleShadow;
  final Color? buttonColor;
  final double innerShadow;

  const GlassContainer({
    super.key,
    this.height,
    this.width,
    required this.child,
    this.leftPadding = 10,
    this.rightPadding = 10,
    this.topPadding = 10,
    this.bottomPadding = 10,
    this.containerBorderRadius = 6,
    this.onTap, this.roundedBorder=0.20,
    this.middleShadow=0.80,
    this.innerShadow=0.35,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
          color: buttonColor,
          border: Border.all(
            width: roundedBorder,
            color: Colors.white54
          ),
          borderRadius: BorderRadius.circular(containerBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(innerShadow),
              blurRadius: 0.5,


            ),
            BoxShadow(
              color: Color(0xFF36698b).withOpacity(middleShadow),
              spreadRadius: -3.0,
              blurRadius: 20.0,
            ),
          ],
        ),

        child: Center(child: child),
      ),
    );
  }
}
