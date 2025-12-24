import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

class WeeklyForeCastItem extends StatelessWidget {
  const WeeklyForeCastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blurRadius: 0.20,
      height: 80.h,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ///===============================================

              Column(
                children: [
                  CommonText(text: 'Monday',fontSize: 16.sp,fontWeight: FontWeight.w500,),
                  SizedBox(height: 6.h,),
                  CommonText(text: 'December 24',fontSize: 12.sp,fontWeight: FontWeight.w400,),
                ],
              ),


              ///===============================================
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 20.h,
                        child: Image.asset(AppImages.sun),
                      ),
                      CommonText(text: '76°F'),
                    ],
                  ),

                  SizedBox(height: 6.h,),

                  CommonText(text: 'Mostly Cloudy'),
                ],
              ),
              ///===============================================


              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 20.h,
                        child: Image.asset(AppImages.windImage),
                      ),
                      CommonText(text: '3 Km / H'),
                    ],
                  ),

                  SizedBox(height: 6.h,),

                  Row(
                    children: [
                      SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Image.asset(AppImages.cloudy)),
                      CommonText(text: '36%'),
                    ],
                  ),
                ],
              ),

              ///===============================================


            ],
          ),
        ],
      ),
    );
  }
}
