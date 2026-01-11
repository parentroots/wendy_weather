import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import '../../../../../../config/route/app_routes.dart';
import '../../../../component/app_bar/glass_app_bar.dart';
import '../../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/other_widgets/item.dart';
import '../../../../component/pop_up/common_pop_menu.dart';
import '../../../../component/text/common_text.dart';
import '../../../../services/storage/storage_keys.dart';
import '../controller/profile_controller.dart';
import '../../../../../../utils/constants/app_images.dart';
import '../../../../../../utils/constants/app_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileController>(
        builder: (controller) {
          return CommonBackground(
            child: Column(
              children: [
                GlassAppBar(
                  showBack: true,
                  showAction: false,
                  title: 'Personal Informaion',
                ),
                Column(
                  children: [
                    SizedBox(height: 25.h),

                    CommonText(maxLines: 2, text: AppString.everyThingLookGood),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: GlassContainer(
                        leftPadding: 10.w,
                        rightPadding: 10.w,
                        topPadding: 16.h,
                        bottomPadding: 16.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 100.w,
                                // responsive width
                                height: 100.w,
                                // height same as width for circle
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // makes the container circular
                                  image: DecorationImage(
                                    image: controller.profileImage != null
                                        ? FileImage(controller.profileImage!)
                                        : const AssetImage("assets/images/evu.jpg") as ImageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            CommonText(
                              text: 'Full Name',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 4.h),
                            CommonText(
                              text: 'MD IBRAHIM NAZMUL',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 10.h),
                            CommonText(
                              text: 'Email Address',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 4.h),
                            CommonText(
                              text: 'ebrahimnazmul20032@gmail.com',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(height: 36.h),

                            GlassButton(
                              text: 'Edite Profiles',
                              onTap: () {
                                Get.toNamed(AppRoutes.editProfile);
                              },
                            ),

                            SizedBox(height: 16.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
