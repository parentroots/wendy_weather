import 'dart:io';
import 'package:flutter/material.dart';
import 'package:wendy_weather/component/text_field/common_text_field.dart';
import '../../../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../component/app_bar/glass_app_bar.dart';
import '../../../../component/background_widget/common_background.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/glass_button/glass_button.dart';
import '../../../../component/glass_container/glass_container.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../../../../config/route/app_routes.dart';
import '../controller/profile_controller.dart';
import '../../../../../../utils/constants/app_images.dart';
import '../../../../../../utils/constants/app_string.dart';
import '../widgets/edit_profile_all_filed.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});
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
                  title: 'Edite Profile',
                ),
                Column(
                  children: [
                    SizedBox(height: 25.h),

                    CommonText(maxLines: 2, text: AppString.letsMakeSureIHaveGotYourName),

                    SizedBox(height: 10.h,),
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
                              child: Stack(
                                children: [
                                  // Profile Image
                                  Container(
                                    width: 110.w,
                                    height: 110.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: controller.profileImage != null
                                            ? FileImage(controller.profileImage!)
                                            : const AssetImage("assets/images/evu.jpg") as ImageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  // Camera Icon
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.pickProfileImage();
                                        
                                      },
                                      child: Container(
                                        width: 34.w,
                                        height: 34.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF5DB9FE),
                                          border: Border.all(width: 2,
                                          color: Colors.white),

                                        ),
                                        child: Icon(
                                          Icons.camera_alt,
                                          size: 18.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            CommonText(
                              text: 'Full Name',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 4.h),
                           CommonTextField(
                             keyboardType: TextInputType.text,
                             hintText: controller.userName,

                           ),
                            SizedBox(height: 10.h),
                            CommonText(
                              text: 'Email Address',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 4.h),
                            CommonTextField(
                              keyboardType: TextInputType.text,
                              hintText: controller.userEmail

                            ),
                            SizedBox(height: 36.h),

                            GlassButton(text: 'Confirm',
                                onTap: () {
                                  Get.back();

                                }),

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
