import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/features/bottom_nav_screen/presentation/screen/alarm/screen/alarm_screen.dart' hide AlarmGlassContainer;
import 'package:wendy_weather/features/bottom_nav_screen/presentation/home_screen/home_screen.dart';
import 'package:wendy_weather/features/bottom_nav_screen/presentation/screen/radar_screen.dart';
import 'package:wendy_weather/features/bottom_nav_screen/presentation/screen/wendy_screen.dart';

import '../../../component/text/common_text.dart';
import '../../../utils/constants/app_icons.dart';


class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  int currentIndex=0;

  List<Widget>screens=[
    HomeScreen(),
    WendyScreen(),
    RadarScreen(),
    AlarmScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: screens[currentIndex],
      
        bottomNavigationBar: GlassContainer(
          height: 76.h,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomNavItem(
                  index: 0,
                  icon: AppIcons.home,
                  label: 'Home',
                ),
                _bottomNavItem(
                  index: 1,
                  icon: AppIcons.wendy,
                  label: 'Wendy',
                ),
                _bottomNavItem(
                  index: 2,
                  icon: AppIcons.radar,
                  label: 'Radar',
                ),
                _bottomNavItem(
                  index: 3,
                  icon: AppIcons.alarm,
                  label: 'Alarm',
                ),
              ],
            ),
          ),
        ),
      
      
      
      ),
    );
  }


  Widget _bottomNavItem({
    required int index,
    required String icon,
    required String label,
  }) {
    final bool isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 22.h,
            color: isSelected ? Colors.white : Colors.white54,
          ),
          SizedBox(height: 6.h),
          CommonText(
            text: label,

            fontSize: 10.sp,
            color: isSelected ? Colors.white : Colors.white54,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }



}
