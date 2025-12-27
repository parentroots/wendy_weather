import 'package:flutter/material.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import '../../../../../config/route/app_routes.dart';
import '../../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/image/common_image.dart';
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
                 leftPadding: 10,
                  rightPadding: 10,
                  bottomPadding: 10,
                  topPadding: 10,
                  width: 384,
                  child: Column(
                    children: [
                      CommonText(
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        text: AppString.yourPersonalAiPowered,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),

                      SizedBox(height: 5.h),

                      CommonText(
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        text: AppString.wendyDeliversHyperLocalForecasts,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 227.h),

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
