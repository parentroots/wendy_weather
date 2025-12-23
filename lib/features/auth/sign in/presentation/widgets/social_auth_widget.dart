import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';


class SocialAuthButtons extends StatelessWidget {
  final String leftIcon;
  final String rightIcon;
  final VoidCallback? onLeftTap;
  final VoidCallback? onRightTap;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final double spacing;

  const SocialAuthButtons({
    super.key,
    required this.leftIcon,
    required this.rightIcon,
    this.onLeftTap,
    this.onRightTap,
    this.height = 42,
    this.width = 77,
    this.borderRadius = 6,
    this.backgroundColor = AppColors.white,
    this.spacing = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialButton(
          icon: leftIcon,
          onTap: onLeftTap,
        ),
        SizedBox(width: spacing.w),
        _socialButton(
          icon: rightIcon,
          onTap: onRightTap,
        ),
      ],
    );
  }

  Widget _socialButton({
    required String icon,
    VoidCallback? onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius.r),
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: backgroundColor,
        ),
        alignment: Alignment.center,
        child: Image.asset(icon),
      ),
    );
  }
}
