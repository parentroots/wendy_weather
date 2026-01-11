import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import '../../../../../../../config/route/app_routes.dart';
import '../../../../../../../utils/extensions/extension.dart';
import '../../../../../component/button/common_button.dart';
import '../../../../../component/glass_button/glass_button.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../utils/constants/app_images.dart';
import '../controller/change_password_controller.dart';
import '../../../../../../../utils/constants/app_colors.dart';
import '../../../../../../../utils/constants/app_string.dart';
import '../../../../../utils/helpers/other_helper.dart';


class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return GetBuilder<ChangePasswordController>(builder: (controller){
     return Scaffold(


       body: CommonBackground(child: SingleChildScrollView(
         child: Column(
           children: [
         
           GlassAppBar(
             showAction: false,
               title: 'Change Password'),
         
         
           SizedBox(height: 70.h,),
         
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 20.w),
             child: GlassContainer(
         
               width: double.maxFinite,
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
         
                   SizedBox(height: 20.h,),
                   
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Column(
                         children: [
                           CommonText(text: 'Change Password',fontSize: 24.sp,),
         
                           SizedBox(height: 4.h,),
         
                           CommonText(
                             maxLines: 3,
                             textAlign: TextAlign.center,
                             text: 'Your new password must be different \n from previous ones',fontSize: 16.sp,),
                         ],
                       ),
                     ],
                   ),
         
                    SizedBox(height: 24.h,),
         
                    CommonText(text: AppString.currentPassword, bottom: 8),
                   CommonTextField(
                     controller: controller.currentPasswordController,
                     hintText: AppString.enterOldPassword,
                     validator: OtherHelper.passwordValidator,
                     isPassword: true,
                   ),
         
                   /// New Password section
                   const CommonText(
                     text: AppString.newPassword,
                     bottom: 8,
                     top: 16,
                   ),
                   CommonTextField(
                     controller: controller.newPasswordController,
                     hintText: AppString.enterNewPassword,
                     validator: OtherHelper.passwordValidator,
                     isPassword: true,
         
                   ),
         
                   /// confirm Password section
                   const CommonText(
                     text: AppString.confirmNewPassword,
                     bottom: 8,
                     top: 16,
                   ),
                   CommonTextField(
                     controller: controller.confirmPasswordController,
                     hintText: AppString.confirmNewPassword,
                     validator:
                         (value) => OtherHelper.confirmPasswordValidator(
                       value,
                       controller.newPasswordController,
                     ),
                     isPassword: true,
                   ),
         
         
         
                   SizedBox(height: 30.h,),

                   GlassButton(text: AppString.updates, onTap: (){

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
                                 text: AppString.allSet,
                                 fontSize: 30.sp,
                                 fontWeight: FontWeight.w500,
                               ),
                               SizedBox(height: 4.h,),
                               CommonText(
                                 maxLines: 2,
                                 textAlign: TextAlign.center,
                                 text: AppString.yourPasswordHasBennChanges,
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
                       barrierDismissible: true,
                     );

                   }
                   ),
         
         
         
         
                 ],
               ),
             ),
           )
         
         
         ],),
       )),

     );
   });
  }
}
