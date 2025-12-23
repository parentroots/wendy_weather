import 'package:flutter/material.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

class CommonBackground extends StatelessWidget {
  const CommonBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.mainBg,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        child,
      ],
    );
  }
}
