import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';

class OrDivider extends StatelessWidget {
  final String text;
  final double lineWidth;
  final double lineHeight;
  final Color lineColor;
  final Color textColor;
  final double fontSize;

  const OrDivider({
    super.key,
    this.text = 'OR',
    this.lineWidth = 75,
    this.lineHeight = 1,
    this.lineColor = const Color(0xffE6E6E6),
    this.textColor = AppColors.white,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: lineHeight.h,
          width: lineWidth.w,
          color: lineColor,
        ),
        SizedBox(width: 10.w),
        CommonText(
          text: text,
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: fontSize.sp,
        ),
        SizedBox(width: 10.w),
        Container(
          height: lineHeight.h,
          width: lineWidth.w,
          color: lineColor,
        ),
      ],
    );
  }
}
