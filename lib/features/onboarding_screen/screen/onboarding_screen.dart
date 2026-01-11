import 'package:flutter/material.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/app_container/app_cotainer.dart';

import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/inju_button/ijamam.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import '../../../../../config/route/app_routes.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';

import '../../../utils/constants/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 139.h,
                    width: 150.w,
                    child: Image.asset(AppImages.appLogo)),

                SizedBox(height: 12.h),

                CommonText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  text: AppString.wellComeWendyWeatherAi,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),

                SizedBox(height: 32.h),



                GlassContainer(
                  roundedBorder: 0.50,
                  leftPadding: 12.w,
                  topPadding: 10.h,
                  bottomPadding: 10.h,
                  rightPadding: 12.w,
                  containerBorderRadius: 12.r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        text: AppString.yourPersonalAiPowered,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color:Color(0xffE6E6E6),
                      ),

                      SizedBox(height: 10.h),

                      CommonText(
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        text: AppString.wendyDeliversHyperLocalForecasts,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h,),


                GlassButton(
                  fontSize: 18,
                  fontColor: Colors.white,
                  text: AppString.getStarted,
                  onTap: () {
                    Get.toNamed(AppRoutes.languageSelectOnboardingScreen);
                    debugPrint('Glass Button Clicked');
                  },
                ),




                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
