import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';
import 'package:wendy_weather/utils/constants/app_string.dart';

import '../../../../config/route/app_routes.dart';

class WendyScreen extends StatelessWidget {
  const WendyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            GlassAppBar(
              showBack: false,
              showAction: false,
              title: 'Wendy  news',
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.h),

                      Image.asset(AppImages.videoImage),
                      SizedBox(height: 16.h),

                      CommonText(
                        text: AppString.todayRecommendation,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),

                      SizedBox(height: 8.h),

                      /// Recommendation List
                      SizedBox(
                        height: 150.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          separatorBuilder: (_, __) => SizedBox(width: 14.w),
                          itemBuilder:
                              (_, __) => Column(
                                children: [
                                  SizedBox(
                                    height: 99.h,
                                    width: 110.w,
                                    child: InkWell(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.fishingScreen);
                                      },

                                      child: Image.asset(AppImages.placeImage),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  CommonText(
                                    text: 'Hiking',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                        ),
                      ),

                      SizedBox(height: 18.h),

                      SizedBox(
                        width: double.maxFinite,
                        child: Image.asset(AppImages.locationImage),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
