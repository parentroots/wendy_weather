import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

class WeeklyForeCastItem extends StatelessWidget {
  final VoidCallback? onTap;
  const WeeklyForeCastItem({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: GlassContainer(
        blurRadius: 0.20,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ///===============================================

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Monday',fontSize: 16,fontWeight: FontWeight.w500,textAlign: TextAlign.start,),
                    SizedBox(height: 6.h,),
                    CommonText(

                      text: 'December 24',fontSize: 12.sp,fontWeight: FontWeight.w400,),
                  ],
                ),


                ///===============================================
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: Image.asset(AppImages.sun),
                        ),
                        CommonText(text: '76°F',fontSize: 16.sp,fontWeight: FontWeight.w500,),
                      ],
                    ),

                    SizedBox(height: 6.h,),

                    CommonText(text: 'Mostly Cloudy'),
                  ],
                ),
                ///===============================================


                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
      ),
    );
  }
}
