import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
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
                        text: 'Let’s Fine-Tune The Wendy Experience',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),

                      InkWell(
                        onTap: () => Get.toNamed(AppRoutes.mainBottomNavScreen),
                        child: SvgPicture.asset(AppIcons.cancel),
                      ),
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
                      Get.toNamed(AppRoutes.profile);
                    },
                    title: 'Personal Information',
                    leadingIcon: AppIcons.person,
                  ),

                  SizedBox(height: 12.h),

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
                    onTap: () {
                      Get.toNamed(AppRoutes.aboutUsScreen);
                    },
                    title: 'About US',
                    leadingIcon: AppIcons.aboutUs,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {
                      Get.toNamed(AppRoutes.privacyPolicyScreen);
                    },
                    title: 'Privacy Policy',
                    leadingIcon: AppIcons.privacy,
                  ),

                  SizedBox(height: 12.h),

                  SettingItem(
                    onTap: () {
                      logOutDialog();
                    },
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

  void logOutDialog() {
    Get.dialog(
      barrierDismissible: false,
      Dialog(
        backgroundColor: Colors.transparent,
        child: GlassContainer(
          width: 320,
          height: 400.h,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// ICON
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.15),
                  ),
                  child: const Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                    size: 28,
                  ),
                ),

                const SizedBox(height: 16),

                /// TITLE
                const Text(
                  "Log out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 10),

                /// MESSAGE
                Text(
                  "Are you sure you want to logout?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 20),

                /// DIVIDER
                Divider(color: Colors.white.withOpacity(0.2), thickness: 1),

                /// BUTTONS
                Row(
                  children: [
                    /// CANCEL
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white.withOpacity(0.12),
                          ),
                          child: const Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    /// LOGOUT
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.back();

                          /// TODO: logout logic
                          /// authController.logout();
                          Get.offAllNamed(AppRoutes.signIn);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white.withOpacity(0.12),
                          ),
                          child: const Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
