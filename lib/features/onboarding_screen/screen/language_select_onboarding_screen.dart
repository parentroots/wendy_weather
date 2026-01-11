import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:video_player/video_player.dart';
import 'package:wendy_weather/component/app_bar/common_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/image/common_image.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/config/route/app_routes.dart';
import 'package:wendy_weather/features/onboarding_screen/controller/onboarding_controller.dart';
import 'package:wendy_weather/utils/constants/app_colors.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';
import 'package:wendy_weather/utils/constants/app_string.dart';

class LanguageSelectOnboardingScreen extends StatefulWidget {
  const LanguageSelectOnboardingScreen({super.key});

  @override
  State<LanguageSelectOnboardingScreen> createState() =>
      _LanguageSelectOnboardingScreenState();
}

class _LanguageSelectOnboardingScreenState
    extends State<LanguageSelectOnboardingScreen> {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            CommonAppBar(title: 'Meet Wendy'),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 27.h),
                    CommonText(
                      overflow: TextOverflow.visible,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      text: AppString.introText,
                    ),

                    SizedBox(height: 44.h),

                    Container(
                      height: 217.h,
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: CommonImage(
                        fill: BoxFit.fill,
                        imageSrc: AppImages.videoImage,
                      ),
                    ),

                    SizedBox(height: 24.h),
                    CommonText(
                      text: AppString.selectLanguage,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 19.h),

                    buildLanguageSection(),

                    SizedBox(height: 40.h),

                    GlassButton(
                      text: AppString.continues,
                      onTap: () {
                        Get.toNamed(AppRoutes.signIn);
                      },
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

  GlassContainer buildLanguageSection() {
    return GlassContainer(
      innerShadow: 0.44,
      middleShadow: 0.90,
      roundedBorder: 0.70,
      leftPadding: 10,
      rightPadding: 10,
      topPadding: 20,
      bottomPadding: 20,
      height: 200.h,

      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GlassContainer(
              onTap: () {
                controller.toggleLanguage();
                setState(() {});
              },
              buttonColor:
                  controller.isEnglishSelected
                      ? Colors.white24
                      : Colors.transparent,

              containerBorderRadius: 30,
              leftPadding: 10,
              rightPadding: 10,
              height: 60.h,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    text: AppString.english,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            GlassContainer(
              onTap: () {
                controller.toggleLanguage();
                setState(() {});
              },
              buttonColor:
                  !controller.isEnglishSelected
                      ? Colors.white24
                      : Colors.transparent,

              containerBorderRadius: 30,
              leftPadding: 10,
              rightPadding: 10,

              height: 60.h,
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    text: AppString.spanish,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
