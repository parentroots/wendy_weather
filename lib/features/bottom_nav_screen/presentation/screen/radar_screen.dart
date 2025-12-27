import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_icons.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

import '../../../../component/background_widget/common_background.dart';

class RadarScreen extends StatelessWidget {
  const RadarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          
          Image.asset(
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
              AppImages.radarImage),


        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              GlassContainer(
                leftPadding: 10.w,
                rightPadding: 10.w,
                bottomPadding: 10.h,
                topPadding: 10.h,
                height: 50.h,
                  width: double.maxFinite, child: Row(
                children: [
                  
                  SvgPicture.asset(AppIcons.location),

                  SizedBox(width: 5.w,),
                  
                  CommonText(text: 'See Forecast for home location',fontSize: 16.sp,fontWeight: FontWeight.w500,)

                ],
              ))



            ],
          ),
        )

          
        ],
      )
    );
  }
}
