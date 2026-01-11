import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/features/bottom_nav_screen/presentation/controller/home_controller.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

class WeeklyForeCastItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String day;
  final String date;
  final int temp;
  final String condition;
  final int rain;
  final int wind;

  const WeeklyForeCastItem({
    super.key,
    this.onTap,
    required this.day,
    required this.date,
    required this.temp,
    required this.condition,
    required this.rain,
    required this.wind,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return InkWell(
          onTap: onTap,
          child: GlassContainer(
            middleShadow: 0.60,
            roundedBorder: 0.40,

            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///===============================================
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: day,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 6.h),
                        CommonText(
                          text: date,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),

                    ///===============================================
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 20.h,
                              child: Image.asset(AppImages.sun),
                            ),
                            CommonText(
                              text: "${temp.toString()}°F",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),

                        SizedBox(height: 6.h),

                        CommonText(text: condition),
                      ],
                    ),

                    ///===============================================
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 20.h,
                              child: Image.asset(AppImages.windImage),
                            ),
                            CommonText(text: "${wind.toString()} km/h"),

                          ],
                        ),

                        SizedBox(height: 6.h),

                        Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 20.w,
                              child: Image.asset(AppImages.cloudy),
                            ),
                            CommonText(text:"${rain.toString()} %"),
                          ],
                        ),
                      ],
                    ),

                    ///===============================================
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
