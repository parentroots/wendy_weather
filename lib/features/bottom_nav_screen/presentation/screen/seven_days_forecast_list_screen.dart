import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import '../../../../component/app_bar/glass_app_bar.dart';
import '../widget/weekly_fore_cast_item.dart';

class SevenDaysForecastListScreen extends StatefulWidget {
  const SevenDaysForecastListScreen({super.key});

  @override
  State<SevenDaysForecastListScreen> createState() =>
      _SevenDaysForecastListScreenState();
}

class _SevenDaysForecastListScreenState
    extends State<SevenDaysForecastListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: CommonBackground(
        child: Column(
          children: [

            GlassAppBar(
              title: "7 Days Forecast",
              showBack: true,
              onBackTap: (){
                Get.back();
              },
              onActionTap: () {
                print("Menu pressed");
              },
              actionIcon: Icon(Icons.menu, color: Colors.white),
            ),
            
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [

                  SizedBox(height: 24.h,),
                  GlassContainer(
                    leftPadding: 29.w,
                    rightPadding: 29.w,
                    topPadding: 6,
                    bottomPadding: 6,
                    containerBorderRadius: 100,
                    borderRadius: 0.2,
                      width: double.maxFinite, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      
                      GlassContainer(
                        containerBorderRadius: 30.r,
                        blurRadius: 0.20, width: 114.w, child: Text('7 Days',style: TextStyle(fontSize: 14.sp,
                      color: Colors.white),)),

                      GlassContainer(
                          containerBorderRadius: 30.r,
                          blurRadius: 0.20,
                          width: 114.w, child: Text('7 Days',style: TextStyle(fontSize: 14.sp,
                          color: Colors.white),))

                    ],
                  )),


                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 7,
                    separatorBuilder: (_, __) => SizedBox(height: 12.h),
                    itemBuilder: (_, __) => WeeklyForeCastItem(),
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
