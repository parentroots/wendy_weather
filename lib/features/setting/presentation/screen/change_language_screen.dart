import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/features/setting/presentation/controller/setting_controller.dart';

import '../../../../component/glass_container/glass_container.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../../utils/constants/app_string.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {

  int selectedLanguageIndex=0;

  final SettingController controller = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(builder: (controller){
      return Scaffold(

        body: CommonBackground(child: Column(
          children: [

            GlassAppBar(
                showAction: false,
                showBack: true,
                title: 'Language'),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(height: 160.h,),


                  buildLanguageSection()


                ],
              ),
            )



          ],
        )),


      );
    });
  }

  GlassContainer buildLanguageSection() {
    return GlassContainer(
      innerShadow: 0.44,
      middleShadow: 0.90,
      roundedBorder: 0.70,
      leftPadding: 16.w,
      rightPadding: 16.w,
      topPadding: 27.h,
      bottomPadding: 27.h,

      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            
            CommonText(text: AppString.letsGetOnTheSameWavelength,fontSize: 16.sp,fontWeight: FontWeight.w500,),
            SizedBox(height: 16.h,),
            
            
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
            
            SizedBox(height: 30.h,),
            
            GlassButton(text: "Confirm & Switch", onTap: (){})
            
            
          ],
        ),
      ),
    );
  }
}
