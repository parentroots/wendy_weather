import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import '../../../../component/app_bar/glass_app_bar.dart';

import '../widget/weekly_fore_cast_item.dart';
import '../widget/hourly_forecast_item.dart';
import '../../../../utils/constants/app_images.dart';

class SevenDaysForecastListScreen extends StatefulWidget {
  const SevenDaysForecastListScreen({super.key});

  @override
  State<SevenDaysForecastListScreen> createState() =>
      _SevenDaysForecastListScreenState();
}

class _SevenDaysForecastListScreenState
    extends State<SevenDaysForecastListScreen> {
  int selectedTab = 0; // 0 = 7 Days, 1 = Daily
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: CommonBackground(
        child: Column(
          children: [
            /// Glass App Bar
            GlassAppBar(
              showAction: false,
              title: "Daily Forecast",
              showBack: true,
              onBackTap: () => Get.back(),
              onActionTap: () {},
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      SizedBox(height: 24.h),

                      /// -------- Tabs (7 Days / Daily) --------
                      GlassContainer(
                        leftPadding: 20.w,
                        rightPadding: 20.w,
                        topPadding: 6,
                        bottomPadding: 6,
                        containerBorderRadius: 100,
                        borderRadius: 0.2,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _tabItem(
                              title: "7 Days",
                              index: 0,
                            ),
                            _tabItem(
                              title: "Daily",
                              index: 1,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10.h),

                      /// -------- Content Change Area --------
                      IndexedStack(
                        index: selectedTab,
                        children: [
                          /// 7 Days Forecast List
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 7,
                            separatorBuilder: (_, __) =>
                                SizedBox(height: 12.h),
                            itemBuilder: (_, __) =>
                            const WeeklyForeCastItem(),
                          ),

                          /// Daily (Hourly) Forecast → PageView
                          SizedBox(
                            height: 500.h,
                            child: PageView.builder(
                              controller: _pageController,
                              itemCount: 12,
                              itemBuilder: (context, index) {
                                return Column(

                                  children: [
                                    Column(
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


                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [

                                            SizedBox(width: 10.w,),


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
                                  ]




                                );
                              },
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 40.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// -------- Tab Item Widget --------
  Widget _tabItem({required String title, required int index}) {
    final bool isSelected = selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: GlassContainer(
        width: 100.w,
        containerBorderRadius: 30.r,
        blurRadius: isSelected ? 0.30 : 0.02,
        borderRadius: isSelected?0.0:0.00,
        child: Center(
          child: CommonText(
            text: title,
            fontSize: 14.sp,
            fontWeight:
            isSelected ? FontWeight.w600 : FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
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
