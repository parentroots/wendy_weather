import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/config/route/app_routes.dart';
import 'package:wendy_weather/features/bottom_nav_screen/presentation/widget/hourly_forecast_item.dart';
import 'package:wendy_weather/features/bottom_nav_screen/presentation/widget/weekly_fore_cast_item.dart';

import '../../../../component/app_bar/home_app_bar.dart';
import '../../../../component/background_widget/common_background.dart';
import '../../../../component/glass_container/glass_container.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_icons.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../../utils/constants/app_string.dart';
import '../widget/state_weather_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            /// App Bar
            HomeAppBar(
              showBack: false,
              title: 'WENDY WEATHER AI',
              onTapAction: () {

                Get.toNamed(AppRoutes.setting);

              },
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Dhaka 30/52, Bangladesh',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),

                    SizedBox(height: 12.h),

                    /// Location Forecast
                    GlassContainer(
                      blurRadius: 0.20,
                      borderRadius: 0.10,
                      leftPadding: 10.w,
                      rightPadding: 10.w,
                      topPadding: 16.h,
                      bottomPadding: 16.h,
                      height: 56.h,
                      width: double.infinity,
                      child: Row(
                        children: [
                          SvgPicture.asset(AppIcons.location),
                          SizedBox(width: 10.w),
                          CommonText(
                            text: 'see forecast for home location',
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 14.h),

                    /// Temperature
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          text: '68°F',
                          fontSize: 60.sp,
                          color: Colors.white,
                        ),
                        Image.asset(
                          AppImages.cloudyColor,
                          height: 72.h,
                          width: 72.w,
                        ),
                      ],
                    ),

                    SizedBox(height: 21.h),

                    /// Weather Type
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppIcons.sunLow),
                            SizedBox(width: 5.w),
                            CommonText(text: 'Sunny'),
                          ],
                        ),
                        CommonText(
                          text: '75°F',
                          fontSize: 20.sp,
                          color: AppColors.white,
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    /// Hourly Forecast
                    CommonText(
                      text: AppString.hourlyForecast,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

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

                    SizedBox(height: 28.h),

                    /// Weekly Forecast Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          text: '7 days forecast',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        InkWell(
                          onTap: (){

                            Get.toNamed(AppRoutes.sevenDaysForecastListScreen);
                          },
                          child: CommonText(

                            text: 'See All',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12.h),

                    /// Weekly List
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      separatorBuilder: (_, __) => SizedBox(height: 12.h),
                      itemBuilder: (_, __) => WeeklyForeCastItem(
                        onTap: (){
                          Get.toNamed(AppRoutes.viewForeCastScreen);
                        },
                      ),
                    ),


                    /*


                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced
                    Here is the very big problem i faced


                    GAP  today recommendation



                    */

                    /// TODAY RECOMMENDATION (NO EXTRA GAP NOW)
                    CommonText(
                      text: AppString.todayRecommendation,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    /// Recommendation List
                    SizedBox(
                      height: 150.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        separatorBuilder: (_, __) => SizedBox(width: 14.w),
                        itemBuilder: (_, __) => Column(
                          children: [
                            SizedBox(
                                height:99.h,
                                width: 110.w,
                                child: InkWell(
                                  onTap: (){

                                    Get.toNamed(AppRoutes.fishingScreen);
                                  },

                                    child: Image.asset(AppImages.placeImage))),
                            SizedBox(height: 10.h),
                            CommonText(
                              text: 'Hiking',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 23.h),

                    CommonText(
                      text: AppString.otherStateWeather,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    StateWeatherWidget(),

                    SizedBox(height: 100.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
