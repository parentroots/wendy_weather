import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/features/auth/forgot%20password/presentation/controller/otp_verify_screen_controller.dart';
import '../../../../../component/app_bar/common_app_bar.dart';
import '../../../../../component/background_widget/common_background.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/glass_container/glass_container.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../config/route/app_routes.dart';
import '../../../../../utils/constants/app_images.dart';
import '../controller/forget_password_controller.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../../../utils/constants/app_string.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final formKey = GlobalKey<FormState>();

  /// init State here
  @override
  void initState() {
    ForgetPasswordController.instance.startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpVerifyScreenController>(
      builder: (controller) {
        return Scaffold(
          body: CommonBackground(
            child: Column(
              children: [
                CommonAppBar(title: 'Verify OTP'),

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
                          leftPadding: 10.w,
                          rightPadding: 10.w,
                          topPadding: 16.h,
                          bottomPadding: 16.h,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              CommonText(
                                text: 'Verify OTP',
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                              ),

                              SizedBox(height: 4.h),
                              CommonText(
                                maxLines: 2,
                                text:
                                    AppString.weHaveSentSixDigitCodeToYourEmail,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),


                              SizedBox(height: 24.h,),


                              PinCodeTextField(
                                length: 6,
                                appContext: context,
                                controller: controller.otpTEController,

                                obscureText: false,
                                hintCharacter: '●',
                                hintStyle: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 24.sp,
                                ),


                                keyboardType: TextInputType.number,

                                animationType: AnimationType.fade,
                                animationDuration: const Duration(milliseconds: 300),

                                enableActiveFill: true,
                                backgroundColor: Colors.transparent,

                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(12),

                                  fieldHeight: 60,
                                  fieldWidth: 56.w,


                                  // 🔹 Border Color
                                  inactiveColor: AppColors.white,
                                  selectedColor:AppColors.white,
                                  activeColor: AppColors.white,


                                  inactiveFillColor: AppColors.transparent,
                                  selectedFillColor:  AppColors.transparent,
                                  activeFillColor:  AppColors.transparent,

                                  errorBorderColor: Colors.red,
                                  disabledColor:  AppColors.white,
                                ),

                                textStyle: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),

                                onCompleted: (value) {
                                  print("OTP Completed: $value");
                                },

                                onChanged: (value) {},
                              ),

                              SizedBox(height: 12.h,),

                              CommonText(text: 'Resend',fontSize: 16.sp,fontWeight: FontWeight.w500,),

                              SizedBox(height: 30.h,),




                              GlassButton(text: 'Continue', onTap: (){

                                Get.toNamed(AppRoutes.createPassword);

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
        );
      },
    );
  }
}
