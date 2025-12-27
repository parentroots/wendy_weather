import 'package:flutter/cupertino.dart' show Placeholder;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import '../../component/glass_container/glass_container.dart';
import '../../component/text/common_text.dart';
import '../../config/route/app_routes.dart';
import '../../utils/constants/app_icons.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int selectedTab = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      text: 'WENDY WEATHER AI',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(AppRoutes.mainBottomNavScreen),
                      child: SvgPicture.asset(AppIcons.cancel),
                    ),
                  ],
                ),
                SizedBox(height: 27.h),
                GlassContainer(
                  leftPadding: 20.w,
                  rightPadding: 20.w,
                  topPadding: 6,
                  bottomPadding: 6,
                  containerBorderRadius: 30,
                  borderRadius: 0.2,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _tabItem(title: "Free", index: 0),
                      _tabItem(title: "Premium", index: 1),
                    ],
                  ),
                ),
                SizedBox(height: 37.h),
                SizedBox(
                  height: 300.h,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      setState(() {
                        selectedTab = index;
                      });
                    },
                    children: [
                      buildFreeCard(),
                      buildPremiumCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildFreeCard() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GlassContainer(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 5.h),
            CommonText(
              text: 'FREE',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 24.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '.7- Days Free Trails',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '.Available with default voice',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '.Basic news only',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '.Limited to default options',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '.Ads are shown during usage',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '.Trial Not included',
              ),
            ),
            SizedBox(height: 9.h),
          ],
        ),
      ),
    );
  }

  Padding buildPremiumCard() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GlassContainer(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 5.h),
            CommonText(
              text: 'PREMIUM',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 24.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: 'Includes voice customization',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: 'Personalized and enhanced content',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: 'Full access to all supported languages',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: 'Completely ad-free experience',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: '7-day free trial when Wendy is set as\n alarm',
              ),
            ),
            SizedBox(height: 9.h),
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                text: 'Subscription auto-renews after trial',
              ),
            ),
            SizedBox(height: 24.h),
            GlassButton(
              height: 40.h,
                text: 'Subscribe',
                onTap: () {
                  Get.snackbar(
                    colorText: Colors.white,
                    'Subscription',
                    'Welcome MD IBRAHIM, now you are a premium user',
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget _tabItem({required String title, required int index}) {
    final bool isSelected = selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
          pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        });
      },
      child: GlassContainer(
        width: 100.w,
        containerBorderRadius: 30.r,
        blurRadius: isSelected ? 0.30 : 0.15,
        borderRadius: isSelected ? 0.0 : 0.0,
        child: Center(
          child: CommonText(
            text: title,
            fontSize: 18.sp,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
