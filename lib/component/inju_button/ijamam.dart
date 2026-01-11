import 'package:flutter/material.dart';
import 'package:wendy_weather/component/text/common_text.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_string.dart';

class PerfectGlassyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const PerfectGlassyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double buttonHeight = 60;
    const double borderRadiusValue = 30;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadiusValue),
        child: Container(
          height: buttonHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF7AADCE),
                Color(0xFF9BC4E0),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(borderRadiusValue),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 0.1,
                spreadRadius: 0.1,
                offset: const Offset(2, 2),
              ),
            ],
            border: Border.all(
              color: Colors.white.withOpacity(0.4),
              width: 1.5,
            ),
          ),
          child: Center(
            child: CommonText(
              text: text,
            ),
          ),
        ),
      ),
    );
  }
}