import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wendy_weather/component/app_bar/common_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/features/auth/sign%20in/presentation/widgets/or_divider.dart';
import 'package:wendy_weather/features/auth/sign%20in/presentation/widgets/social_auth_widget.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';
import '../../../../../../../config/route/app_routes.dart';
import '../../../../../../../utils/extensions/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../controller/sign_in_controller.dart';

import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_string.dart';
import '../../../../../../../utils/helpers/other_helper.dart';
import '../widgets/do_not_account.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      builder: (controller) {
        return Scaffold(
          body: CommonBackground(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CommonAppBar(title: AppString.unlockYourForecast),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        SizedBox(height: 50.h),

                        GlassContainer(
                          containerBorderRadius: 12.r,
                          middleShadow: 0.90,
                          height: 660.h,
                          width: double.maxFinite,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 16.h,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  CommonText(
                                    text: AppString.login,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),

                                  SizedBox(height: 17.h),

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFFFFFFF),
                                        text: AppString.emailAddress,
                                      ),
                                      SizedBox(height: 6.h),
                                      CommonTextField(
                                        hintText:
                                            AppString.enterYourEmailAddress,
                                      ),

                                      SizedBox(height: 11.h),

                                      CommonText(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFFFFFFF),
                                        text: AppString.password,
                                      ),
                                      SizedBox(height: 6.h),
                                      CommonTextField(
                                        hintText: AppString.enterYouPassword,
                                        isPassword: controller.isShowPassword,
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            controller.onTapPasswordToggle();
                                          },
                                          icon: Icon(
                                            controller.isShowPassword
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 11.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(AppRoutes.forgotPassword);
                                        },
                                        child: CommonText(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          text: AppString.forgotPassword,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 32.h),

                                  GlassButton(
                                    text: AppString.login,
                                    onTap: () {
                                      Get.offAllNamed(
                                        AppRoutes.mainBottomNavScreen,
                                      );
                                    },
                                  ),

                                  SizedBox(height: 30.h),

                                  OrDivider(),

                                  SizedBox(height: 20.h),

                                  SocialAuthButtons(
                                    leftIcon: AppImages.google,
                                    onLeftTap: () {
                                      debugPrint(
                                        'Login With Google❤️❤️❤️😊😁😁😁😁😁',
                                      );
                                    },
                                    rightIcon: AppImages.apple,
                                    onRightTap: () {
                                      debugPrint(
                                        'Login With Apple❤️❤️❤️😊😁😁😁😁😁',
                                      );
                                    },
                                  ),

                                  SizedBox(height: 40.h),

                                  RichText(
                                    text: TextSpan(
                                      text: "Don’t have an account? ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Sign up",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Get.toNamed(AppRoutes.signUp);
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    // return SingleChildScrollView(
    //   padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
    //   child: Form(
    //     key: controller.formKey,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         /// Log In Instruction here
    //         const CommonText(
    //           text: AppString.logIntoYourAccount,
    //           fontSize: 32,
    //           bottom: 20,
    //           top: 36,
    //         ),
    //
    //         /// Account Email Input here
    //         const CommonText(text: AppString.email, bottom: 8),
    //         CommonTextField(
    //           controller: controller.emailController,
    //           prefixIcon: const Icon(Icons.mail),
    //           hintText: AppString.email,
    //           validator: OtherHelper.emailValidator,
    //         ),
    //
    //         /// Account Password Input here
    //         const CommonText(
    //           text: AppString.password,
    //           bottom: 8,
    //           top: 24,
    //         ),
    //         CommonTextField(
    //           controller: controller.passwordController,
    //           prefixIcon: const Icon(Icons.lock),
    //           isPassword: true,
    //           hintText: AppString.password,
    //           validator: OtherHelper.passwordValidator,
    //         ),
    //
    //         /// Forget Password Button here
    //         Align(
    //           alignment: Alignment.centerRight,
    //           child: GestureDetector(
    //             onTap: () => Get.toNamed(AppRoutes.forgotPassword),
    //             child: const CommonText(
    //               text: AppString.forgotThePassword,
    //               top: 10,
    //               bottom: 30,
    //               color: AppColors.primaryColor,
    //               fontSize: 16,
    //               fontWeight: FontWeight.w600,
    //             ),
    //           ),
    //         ),
    //
    //         /// Submit Button here
    //         CommonButton(
    //           titleText: AppString.signIn,
    //           isLoading: controller.isLoading,
    //           onTap: controller.signInUser,
    //         ),
    //         30.height,
    //
    //         /// Account Creating Instruction here
    //         const DoNotHaveAccount(),
    //         30.height,
    //       ],
    //     ),
    //   ),
    // );
  }
}
