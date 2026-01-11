import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';

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
  @override
  Widget build(BuildContext context) {
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
  }

  GlassContainer buildLanguageSection() {
    return GlassContainer(
      leftPadding: 10,
      rightPadding: 10,
      topPadding: 20,
      bottomPadding: 20,

      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [


            SizedBox(height: 20.h,),
            
            CommonText(text:AppString.selectLanguage,fontSize: 18.sp,),

            SizedBox(height: 32.h,),


            GlassContainer(
              leftPadding: 10,
              rightPadding: 10,
              height: 60.h,
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

                        border: Border.all(width: 3, color: Color(0xFFE6E6E6)),
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
              height: 60.h,
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

                        border: Border.all(width: 3, color: Color(0xFFE6E6E6)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h,),
            
            GlassButton(text: 'Save', fontColor: Colors.white,fontSize: 22.sp,onTap:(){

            })


          ],
        ),
      ),
    );
  }
}
