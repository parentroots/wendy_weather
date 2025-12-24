import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../component/glass_container/glass_container.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_images.dart';

class HourlyForecastItem extends StatelessWidget {
  const HourlyForecastItem({super.key, required this.icon, required this.time, required this.temperature});


  final String icon;
  final String time;
  final String temperature;


  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blurRadius: 0.20,
      width: 95.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 32.h,
          ),
          SizedBox(height: 6.h),
          CommonText(
            text: "$time PM",
            fontSize: 14.sp,
          ),
          SizedBox(height: 6.h),
          CommonText(
            text: "$temperature °",
            fontSize: 24.sp,
          ),
        ],
      ),
    );
  }
}
