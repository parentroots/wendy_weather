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
                CommonAppBar(title: 'Welcome wendy\n Weather Ai'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),

                      GlassContainer(
                        blurRadius: 0.18,
                        height: 695.h,
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
                                  text: AppString.signUp,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                ),

                                SizedBox(height: 17.h),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                      text: AppString.fullName,
                                    ),


                                    SizedBox(height: 6.h),
                                    CommonTextField(
                                      controller: controller.fullNameTEController,
                                      hintText: AppString.enterYourName,
                                    ),


                                    SizedBox(height: 12.h),
                                    CommonText(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                      text: AppString.emailAddress,
                                    ),


                                    SizedBox(height: 6.h),
                                    CommonTextField(
                                      controller: controller.emailAddressTEController,
                                      hintText: AppString.enterYourEmailAddress,
                                    ),



                                    SizedBox(height: 12.h),
                                    CommonText(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                      text: AppString.password,
                                    ),


                                    SizedBox(height: 6.h),
                                    CommonTextField(
                                      isPassword: controller.passwordIsShow,
                                      suffixIcon: IconButton(onPressed: (){
                                        controller.passwordToggle();
                                      }, icon: Icon(controller.passwordIsShow?Icons.visibility_outlined:Icons.visibility_off_outlined,color: Colors.white,)),
                                      controller: controller.passwordTEController,
                                      hintText: AppString.enterYouPassword,
                                    ),



                                    SizedBox(height: 12.h),
                                    CommonText(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFFFFFFF),
                                      text: 'Confirm Password',
                                    ),


                                    SizedBox(height: 6.h),
                                    CommonTextField(
                                      isPassword: controller.confirmPasswordIsShow,
                                      suffixIcon: IconButton(onPressed: (){
                                        controller.confirmPasswordToggle();

                                      }, icon: Icon(controller.confirmPasswordIsShow?Icons.visibility_outlined:Icons.visibility_off_outlined,color: Colors.white,)),
                                      controller: controller.confirmPasswordTEController,
                                      hintText: 'Enter Confirm Password',
                                    ),


                                  ],
                                ),



                                SizedBox(height: 11.h),


                                Row(
                                  children: [




                                  ],
                                ),

                                SizedBox(height: 32.h),

                                GlassButton(
                                  text: AppString.signUp,
                                  onTap: () {
                                    debugPrint('❤️❤️❤️😊😁😁😁😁😁');
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
                                    text: AppString.alreadyHaveAccount,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: AppString.login,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer:
                                            TapGestureRecognizer()
                                              ..onTap = () {
                                                print("Sign up clicked");
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
        );
      },
    );
  }
}
