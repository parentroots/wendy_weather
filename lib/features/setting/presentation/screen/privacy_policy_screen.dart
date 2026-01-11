import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'dart:ui';

import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_string.dart';

import '../../../../component/glass_container/glass_container.dart';
import '../../../../utils/constants/app_colors.dart';
import '../widgets/custom_glass_container.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            GlassAppBar(
                onBackTap: Get.back,
                title: 'Privacy Policy', showAction: false),

            SizedBox(height: 16.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: GlassContainer(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      color: AppColors.white,
                      maxLines: 5,
                      textAlign: TextAlign.start,
                      text: AppString.atWendyWeatherAiYOurPrivacyIsImportant,
                    ),
                    SizedBox(height: 11.h),

                    CommonText(
                      text: AppString.informationWeCollect,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CommonText(
                        text: AppString.personalInformation,

                      ),
                    ),

                    SizedBox(height: 7.h),

                    CommonText(
                      text:
                          'Name, email address, and account details (if you \n create an account or subscribe).',

                    ),

                    SizedBox(height: 8.h),

                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CommonText(
                        text: AppString.locationData,

                      ),
                    ),

                    SizedBox(height: 7.h),

                    CommonText(
                      text: AppString.toProvideAccurateWeather,
                      maxLines: 2,
                      textAlign: TextAlign.start,

                    ),

                    SizedBox(height: 8.h),

                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CommonText(
                        text: AppString.userPreferences,

                      ),
                    ),

                    SizedBox(height: 8.h),

                    CommonText(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      text:
                          'Your chosen activities (e.g., hiking, fishing),\n language settings, and app preferences.',
                    ),

                    SizedBox(height: 8.h),

                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CommonText(
                        text: '.Payment Information',

                      ),
                    ),

                    SizedBox(height: 8.h),

                    CommonText(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      text:
                          'If you subscribe to our premium plan, payment\n details are processed securely through third-party\n  providers (we do not store full payment card \n details).',
                    ),


                    SizedBox(height: 8.h),

                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CommonText(
                        text: '.Device Information',

                      ),
                    ),


                    SizedBox(height: 8.h),

                    CommonText(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      text:
                      'Basic device information (such as device model,\n operating system, app version) to improve/n performance.',
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
