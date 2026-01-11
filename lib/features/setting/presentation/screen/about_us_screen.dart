import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_string.dart';
import '../widgets/custom_glass_container.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child: Column(
        children: [

          GlassAppBar(
            onBackTap: Get.back,
            showAction: false,
              title: AppString.aboutUs),


          SizedBox(height: 14.h,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: GlassContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  CommonText(
                    color: AppColors.white,
                    maxLines: 5,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    text: AppString.atWendyWeatherAiWeBelive,
                  ),
                  SizedBox(height: 11.h),

                  CommonText(
                    textAlign: TextAlign.start,
                    maxLines: 10,
                    text: AppString.ourAppGoesBeyond,
                  ),


                  SizedBox(height: 11.h),

                  CommonText(
                    textAlign: TextAlign.start,
                    text: AppString.weArePassionateAboutCombing,
                    maxLines: 6,
                  ),



                ],
              ),
            ),
          ),

        ],
      )),
    );
  }
}
