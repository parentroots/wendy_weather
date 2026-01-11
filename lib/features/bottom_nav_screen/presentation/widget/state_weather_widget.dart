import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wendy_weather/utils/constants/app_string.dart';

import '../../../../component/glass_container/glass_container.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_images.dart';

class StateWeatherWidget extends StatelessWidget {
  const StateWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GlassContainer(
          middleShadow: 0.50,
          innerShadow: 0.34,
          leftPadding: 10.w,
          rightPadding: 10.w,
          topPadding: 10.h,
          bottomPadding: 10.h,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Row(
                children: [
                  GlassContainer(
                    leftPadding: 15.w,
                    rightPadding: 15.w,
                    topPadding: 15.h,
                    bottomPadding: 15.h,
                    child: Center(child: Image.asset(AppImages.sun)),
                  ),

                  SizedBox(width: 10.w),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonText(
                        text: AppString.uvIndex,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 10.h),
                      CommonText(
                        text: '5.6',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),

                  Spacer(),

                  GlassContainer(
                    bottomPadding: 10.h,
                    rightPadding: 10.w,
                    leftPadding: 10.w,
                    topPadding: 10.h,
                    child: Center(
                      child: CommonText(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.sp,
                        text: 'Moderate',
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              LinearProgressIndicator(
                value: 0.7, // 70% progress
                backgroundColor: Colors.grey,
                color: Colors.white,
                minHeight: 2,
              ),

              SizedBox(height: 12.h),

              Row(
                children: [
                  Image.asset(AppImages.moodIcon),

                  SizedBox(width: 10),
                  CommonText(
                    text: AppString.sunScreenIsNotAPersonalityButItHelps,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10.h);
      },
      itemCount: 2,
    );
  }
}
