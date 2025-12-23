import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:video_player/video_player.dart';
import 'package:wendy_weather/component/app_bar/common_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/config/route/app_routes.dart';
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
  int selectedLanguageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            CommonAppBar(title: 'Meet Wendy'),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 27.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31.w),
                    child: CommonText(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      text:
                          AppString
                              .wendyIsHereToBringYOurFriendlyAndAccurateWeatherInformation,
                    ),
                  ),

                  SizedBox(height: 44.h),

                  Container(
                    height: 217.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.videoImage),
                      ),
                    ),
                  ),

                  SizedBox(height: 24.h),
                  CommonText(
                    text: AppString.selectLanguage,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),

                  SizedBox(height: 19.h),

                  buildLanguageSection(),

                  SizedBox(height: 40.h,),
                  
                  GlassButton(text: AppString.continues, onTap: (){

                    Get.toNamed(AppRoutes.signIn);

                  })


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GlassContainer buildLanguageSection() {
    return GlassContainer(
      leftPadding: 10,
      rightPadding: 10,
      topPadding: 20,
      bottomPadding: 20,
      borderRadius: 0,
      height: 165.h,
      blurRadius: 0.10,
      width: double.maxFinite,
      child: Column(
        children: [
          GlassContainer(
            leftPadding: 10,
            rightPadding: 10,
            blurRadius: 0.10,
            height: 54.h,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.spanish),
                    SizedBox(width: 6.w),
                    CommonText(
                      text: AppString.spanish,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ],
                ),

                InkWell(
                  onTap: () {
                    selectedLanguageIndex = 0;
                    setState(() {});
                  },
                  child: Container(
                    height: 23.h,
                    width: 23.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          selectedLanguageIndex == 0
                              ? Colors.white
                              : Colors.transparent,

                      border: Border.all(width: 5, color: Color(0xFFE6E6E6)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          GlassContainer(
            leftPadding: 10,
            rightPadding: 10,
            blurRadius: 0.10,
            height: 54.h,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.english),
                    SizedBox(width: 6.w),
                    CommonText(
                      text: AppString.english,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ],
                ),

                InkWell(
                  onTap: () {
                    selectedLanguageIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    height: 23.h,
                    width: 23.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          selectedLanguageIndex == 1
                              ? Colors.white
                              : Colors.transparent,

                      border: Border.all(width: 5, color: Color(0xFFE6E6E6)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
