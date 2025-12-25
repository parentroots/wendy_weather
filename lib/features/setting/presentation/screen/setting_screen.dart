import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/utils/constants/app_icons.dart';
import '../../../../../../config/route/app_routes.dart';
import '../../../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../../component/pop_up/common_pop_menu.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_images.dart';
import '../controller/setting_controller.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_string.dart';
import '../widgets/setting_item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: 'WENDY WEATHER AI',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),

                      SvgPicture.asset(AppIcons.cancel),
                    ],
                  ),

                  SizedBox(height: 15.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonText(
                        text: '68°F',
                        fontSize: 78.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      Image.asset(AppImages.cloudyColor),
                    ],
                  ),

                  CommonText(
                    text: 'TODAY\'S',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),

                  SizedBox(height: 40.h),

                  SettingItem(
                    onTap: () {
                      Get.toNamed(AppRoutes.manageLocationScreen);


                    },
                    title: 'Mange location',
                    leadingIcon: AppIcons.location,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {

                      Get.toNamed(AppRoutes.myPackageScreen);
                    },
                    title: 'My package',
                    leadingIcon: AppIcons.package,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {
                      Get.toNamed(AppRoutes.changePassword);
                    },
                    title: 'Change password',
                    leadingIcon: AppIcons.key,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {

                      Get.toNamed(AppRoutes.changeLanguageScreen);

                    },
                    title: 'Language',
                    leadingIcon: AppIcons.world,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {

                      Get.toNamed(AppRoutes.helpAndSupportScreen);

                    },
                    title: 'Help & support',
                    leadingIcon: AppIcons.help,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {},
                    title: 'About US',
                    leadingIcon: AppIcons.aboutUs,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {},
                    title: 'Privacy Policy',
                    leadingIcon: AppIcons.privacy,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {},
                    title: 'Log out',
                    leadingIcon: AppIcons.logout,
                  ),

                  SizedBox(height: 12.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
