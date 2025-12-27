import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';
import 'package:wendy_weather/utils/constants/app_string.dart';

class FishingScreen extends StatefulWidget {
  const FishingScreen({super.key});

  @override
  State<FishingScreen> createState() => _FishingScreenState();
}

class _FishingScreenState extends State<FishingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      CommonBackground(child: Column(

        children: [
          GlassAppBar(
            title: "Fishing",
            showAction: false,
            showBack: true,
            onBackTap: (){
              Get.back();
            },

          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              SizedBox(height: 14.h,),
              
              Image.asset(AppImages.fishingBanner),


              SizedBox(height: 6.h,),

                CommonText(text: 'October 02,2025 12:40 pm',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,),

                SizedBox(height: 10.h,),

                CommonText(text: AppString.fishingWeatherCastWithConfidence,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,),
                
                
                SizedBox(height: 6.h,),
                
                CommonText(
                  textAlign: TextAlign.start,
                  maxLines: 10,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    text: AppString.fishingDescription)


                

              


            ],),
          )


        ],
      )),
    );
  }
}
