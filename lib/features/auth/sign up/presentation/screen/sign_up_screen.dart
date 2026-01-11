import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../component/app_bar/common_app_bar.dart';
import '../../../../../component/background_widget/common_background.dart';
import '../../../../../component/glass_button/glass_button.dart';
import '../../../../../component/glass_container/glass_container.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../sign in/presentation/widgets/or_divider.dart';
import '../../../sign in/presentation/widgets/social_auth_widget.dart';
import '../controller/sign_up_controller.dart';
import '../../../../../../../utils/constants/app_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return Scaffold(
          body: CommonBackground(
            child: Column(
              children: [

                /// App Bar
                CommonAppBar(title: 'Welcome wendy\n Weather Ai'),

                /// BODY SCROLL
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [

                        SizedBox(height: 50.h),

                        /// Glass Container (NO FIXED HEIGHT)
                        GlassContainer(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 16.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Center(
                                  child: CommonText(
                                    text: AppString.signUp,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                SizedBox(height: 20.h),

                                /// Full Name
                                CommonText(
                                  text: AppString.fullName,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 6.h),
                                CommonTextField(
                                  controller:
                                  controller.fullNameTEController,
                                  hintText: AppString.enterYourName,
                                ),

                                SizedBox(height: 12.h),

                                /// Email
                                CommonText(
                                  text: AppString.emailAddress,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 6.h),
                                CommonTextField(
                                  controller:
                                  controller.emailAddressTEController,
                                  hintText:
                                  AppString.enterYourEmailAddress,
                                ),

                                SizedBox(height: 12.h),

                                /// Password
                                CommonText(
                                  text: AppString.password,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 6.h),
                                CommonTextField(
                                  isPassword:
                                  controller.passwordIsShow,
                                  controller:
                                  controller.passwordTEController,
                                  hintText:
                                  AppString.enterYouPassword,
                                  suffixIcon: IconButton(
                                    onPressed:
                                    controller.passwordToggle,
                                    icon: Icon(
                                      controller.passwordIsShow
                                          ? Icons.visibility_outlined
                                          : Icons
                                          .visibility_off_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                SizedBox(height: 12.h),

                                /// Confirm Password
                                CommonText(
                                  text: 'Confirm Password',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(height: 6.h),
                                CommonTextField(
                                  isPassword: controller
                                      .confirmPasswordIsShow,
                                  controller: controller
                                      .confirmPasswordTEController,
                                  hintText:
                                  'Enter Confirm Password',
                                  suffixIcon: IconButton(
                                    onPressed: controller
                                        .confirmPasswordToggle,
                                    icon: Icon(
                                      controller.confirmPasswordIsShow
                                          ? Icons.visibility_outlined
                                          : Icons
                                          .visibility_off_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                                SizedBox(height: 32.h),

                                /// Sign Up Button
                                GlassButton(
                                  text: AppString.signUp,
                                  onTap: () {
                                    debugPrint(
                                        'Sign up clicked');
                                  },
                                ),

                                SizedBox(height: 30.h),

                                OrDivider(),

                                SizedBox(height: 20.h),

                                SocialAuthButtons(
                                  leftIcon: AppImages.google,
                                  onLeftTap: () {},
                                  rightIcon: AppImages.apple,
                                  onRightTap: () {},
                                ),

                                SizedBox(height: 40.h),

                                /// Login Redirect
                                Center(
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                      AppString.alreadyHaveAccount,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                          AppString.login,
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight:
                                            FontWeight.w500,
                                            decoration:
                                            TextDecoration
                                                .underline,
                                          ),
                                          recognizer:
                                          TapGestureRecognizer()
                                            ..onTap = () {
                                              Get.back();
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 20.h,)

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
