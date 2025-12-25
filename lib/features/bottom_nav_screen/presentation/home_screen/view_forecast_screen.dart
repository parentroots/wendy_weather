import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

import '../../../../component/app_bar/glass_app_bar.dart';
import '../widget/hourly_forecast_item.dart';

class ViewForeCastScreen extends StatelessWidget {
  const ViewForeCastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child: Column(
        children: [

          GlassAppBar(
            title: "View Forecast",
            showBack: true,
            onBackTap: (){
              Get.back();
            },
            onActionTap: () {
              print("Menu pressed");
            },

          ),



          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Top Row: Temperature + Icon


                  SizedBox(height: 20.h,),

                  Row(
                    children: [
                      Text(
                        '68°F',
                        style: TextStyle(
                          fontSize: 48.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(width: 85.w,),

                      SizedBox(
                        height: 72.h,
                          width: 72.w,
                          child: Image.asset(AppImages.cloudyColor))
                    ],
                  ),

                  SizedBox(height: 6.h),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mostly Cloudy',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),

                      SizedBox(height: 7.h),

                      /// Percentages
                      Text(
                        '32% / 27% / 25% (Feels Like 40%)',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),

                      SizedBox(height: 14.h),
                    ],
                  ),

                  /// Moon + Wind
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Image.asset(AppImages.sunRise),


                     Row(
                       children: [
                         SizedBox(
                           height:22.h,
                             width: 25.w,
                             child: Image.asset(AppImages.windImage)),
                          SizedBox(width: 6.w),


                          Text(
                            'Waxing Cress',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          SizedBox(width: 30.w),
                       ],
                     ),



                    ],
                  ),

                  SizedBox(height: 14.h),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _timeItem('05:51 AM'),
                      _timeItem('05:52 AM'),
                      _timeItem('11:24 AM'),
                      _timeItem('10:24 AM'),
                    ],
                  ),


                  SizedBox(height: 20.h),


                  Text(
                    'Hourly Forecast',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 9.h),


                  SizedBox(
                    height: 130.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      separatorBuilder: (_, __) => SizedBox(width: 12.w),
                      itemBuilder: (_, __) => HourlyForecastItem(
                        icon: AppImages.sun,
                        time: '12:00',
                        temperature: '20',
                      ),
                    ),
                  ),




                ],

            ),
          )
        ],

      ),),
    );
  }

  Widget _timeItem(String time) {
    return Row(
      children: [
        Icon(Icons.arrow_downward,
            size: 16.sp, color: Colors.white70),
        SizedBox(width: 4.w),
        Text(
          time,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xffFFFFFF),
          ),
        ),
      ],
    );
  }
}
