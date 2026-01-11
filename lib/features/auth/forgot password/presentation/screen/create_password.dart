import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/config/route/app_routes.dart';
import 'package:wendy_weather/features/auth/forgot%20password/presentation/screen/forgot_password.dart';
import '../../../../../../../utils/extensions/extension.dart';
import '../../../../../component/app_bar/common_app_bar.dart';
import '../../../../../component/background_widget/common_background.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/glass_container/glass_container.dart';
import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../controller/forget_password_controller.dart';
import '../../../../../../../utils/constants/app_images.dart';
import '../../../../../../../utils/constants/app_string.dart';
import '../../../../../../../utils/helpers/other_helper.dart';


class CreatePassword extends StatelessWidget {
  CreatePassword({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return GetBuilder<ForgetPasswordController>(builder: (controller){
      return Scaffold(

        body: CommonBackground(
          child: Column(
            children: [
              CommonAppBar(title: 'Create New Password'),

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

                            Row(
                              children: [
                                CommonText(
                                  text: 'New Password',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),

                            SizedBox(height: 6.h),
                            CommonTextField(
                              isPassword: controller.newPasswordIsShow,
                              hintText: AppString.enterNewPassword,
                              suffixIcon: IconButton(onPressed: (){
                                controller.newPasswordToggle();
                              }, icon: Icon(controller.newPasswordIsShow?Icons.visibility:Icons.visibility_off,color: AppColors.white,)),
                            ),

                            SizedBox(height: 12.h,),


                            Row(
                              children: [
                                CommonText(
                                  text: 'Confirm New Password',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),

                            SizedBox(height: 6.h),
                            CommonTextField(
                              isPassword: controller.confirmNewPasswordIsShow,
                              suffixIcon: IconButton(onPressed: (){
                                controller.confirmNewPasswordToggle();
                              }, icon: Icon(controller.confirmNewPasswordIsShow?Icons.visibility:Icons.visibility_off,color: AppColors.white,)),
                              hintText: AppString.confirmNewPassword,
                            ),




                            SizedBox(height: 40.h),

                            CommonButton(
                              onTap: (){
                                Get.dialog(
                                  Dialog(
                                    backgroundColor: AppColors.transparent,
                                    child: GlassContainer(
                                      height: 400.h,
                                      width: double.maxFinite,
                                      child: Column(
                                        children: [
                                          Image.asset(AppImages.success),
                                          CommonText(
                                            text: 'Congratulations',
                                            fontSize: 30.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          SizedBox(height: 4.h,),
                                          CommonText(
                                            maxLines: 2,
                                            textAlign: TextAlign.center,
                                            text: 'Your password has been changed\nsuccessfully',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          SizedBox(height: 12.h,),
                                          
                                          CommonButton(
                                            onTap: (){

                                              Get.toNamed(AppRoutes.signIn);
                                            },
                                              titleText: 'Back To Login')
                                        ],
                                      ),
                                    ),
                                  ),
                                  barrierDismissible: true, // এটা থাকলেই screen এর বাইরে ক্লিক করলে dismiss হবে
                                );




                              },
                              buttonHeight: 48.h,
                              titleText: 'Update',
                            ),
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
    });

    //   /// App Bar Section starts here
    //   appBar: AppBar(
    //     title: const CommonText(
    //       text: AppString.createNewPassword,
    //       fontWeight: FontWeight.w700,
    //       fontSize: 24,
    //     ),
    //   ),
    //
    //   /// Body Section starts here
    //   body: GetBuilder<ForgetPasswordController>(
    //     builder: (controller) {
    //       return SingleChildScrollView(
    //         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
    //         child: Form(
    //           key: formKey,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               64.height,
    //
    //               /// Reset password image here
    //               const Center(
    //                 child: CommonImage(
    //                   imageSrc: AppImages.noImage,
    //                   height: 297,
    //                   width: 297,
    //                 ),
    //               ),
    //
    //               /// Instruction of Creating New Password
    //               const CommonText(
    //                 text: AppString.createYourNewPassword,
    //                 fontSize: 18,
    //                 textAlign: TextAlign.start,
    //                 top: 64,
    //                 bottom: 24,
    //               ),
    //
    //               /// New Password here
    //               const CommonText(text: AppString.password, bottom: 8),
    //               CommonTextField(
    //                 controller: controller.passwordController,
    //                 prefixIcon: const Icon(Icons.lock),
    //                 hintText: AppString.password,
    //                 isPassword: true,
    //                 validator: OtherHelper.passwordValidator,
    //               ),
    //
    //               /// Confirm Password here
    //               const CommonText(
    //                 text: AppString.password,
    //                 bottom: 8,
    //                 top: 12,
    //               ),
    //               CommonTextField(
    //                 controller: controller.confirmPasswordController,
    //                 prefixIcon: const Icon(Icons.lock),
    //                 hintText: AppString.confirmPassword,
    //                 validator:
    //                     (value) => OtherHelper.confirmPasswordValidator(
    //                       value,
    //                       controller.passwordController,
    //                     ),
    //                 isPassword: true,
    //               ),
    //               64.height,
    //
    //               /// Submit Button here
    //               CommonButton(
    //                 titleText: AppString.continues,
    //                 isLoading: controller.isLoadingReset,
    //                 onTap: () {
    //                   if (formKey.currentState!.validate()) {
    //                     controller.resetPasswordRepo();
    //                   }
    //                 },
    //               ),
    //             ],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
