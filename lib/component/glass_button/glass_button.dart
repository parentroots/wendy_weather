import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wendy_weather/component/text/common_text.dart';

class GlassButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;
  final double height;
  final double borderRadius;
  final double fontSize;
  final Color fontColor;

  const GlassButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
    this.height = 56,
    this.borderRadius = 40, this.fontSize=18, this.fontColor=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.35),
                  Colors.white.withOpacity(0.1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(
                color: Colors.white.withOpacity(0.3),
                width: 1.5,
              ),
            ),
            child: CommonText(
              fontSize: fontSize,
                color: fontColor,
                text: text),
          ),
        ),
      ),
    );
  }
}
