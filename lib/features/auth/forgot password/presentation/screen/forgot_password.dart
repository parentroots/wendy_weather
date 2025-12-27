import 'package:flutter/material.dart';
import 'package:wendy_weather/component/app_bar/common_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/config/route/app_routes.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';
import '../../../../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../controller/forget_password_controller.dart';
import '../../../../../../../utils/constants/app_string.dart';
import '../../../../../../../utils/helpers/other_helper.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgetPasswordController>(
      builder:
          (controller) => Scaffold(
            body: CommonBackground(
              child: Column(
                children: [
                  CommonAppBar(title: 'Forgot Password'),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 51.h),
                          SizedBox(
                              height: 139.h,
                              width: 150.w,
                              child: Image.asset(AppImages.appLogo)),
                      
                          SizedBox(height: 53.h),
                      
                          GlassContainer(
                            blurRadius: 0.18,
                            leftPadding: 10.w,
                            rightPadding: 10.w,
                            topPadding: 16.h,
                            bottomPadding: 16.h,
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                CommonText(
                                  text: AppString.forgotPassword2,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                      
                                SizedBox(height: 4.h),
                                CommonText(
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  text:
                                      AppString
                                          .dontWorryEnterYourEmailAddressAndWellSend,
                                ),
                      
                                SizedBox(height: 25.h),
                      
                                Row(
                                  children: [
                                    CommonText(
                                      text: 'Email address',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                      
                                SizedBox(height: 6.h),
                      
                                CommonTextField(
                                  hintText: AppString.enterYourEmailAddress,
                                ),
                      
                                SizedBox(height: 40.h),

                                GlassButton(
                                  height: 48.h,
                                    text: 'Verify', onTap: (){
                                  Get.toNamed(AppRoutes.otpVerifyScreen);

                                })


                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

// /// App Bar Section
// appBar: AppBar(
//   title: const CommonText(
//     text: AppString.forgotPassword,
//     fontWeight: FontWeight.w700,
//     fontSize: 24,
//   ),
// ),
//
// /// body section
// body: SingleChildScrollView(
//   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
//   child: Form(
//     key: formKey,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         /// forget password take email for reset Password
//         const CommonText(text: AppString.email, bottom: 8, top: 80),
//         CommonTextField(
//           controller: controller.emailController,
//           prefixIcon: const Icon(Icons.mail),
//           hintText: AppString.email,
//           validator: OtherHelper.emailValidator,
//         ),
//         100.height,
//       ],
//     ),
//   ),
// ),
//
// /// Bottom Navigation Bar Section
// bottomNavigationBar: Padding(
//   padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//
//   /// Submit Button
//   child: CommonButton(
//     titleText: AppString.continues,
//     isLoading: controller.isLoadingEmail,
//     onTap: () {
//       if (formKey.currentState!.validate()) {
//         controller.forgotPasswordRepo();
//       }
//     },
//   ),
// ),
