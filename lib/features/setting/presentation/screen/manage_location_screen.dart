import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text_field/common_text_field.dart';
import 'package:wendy_weather/utils/constants/app_icons.dart';

import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_images.dart';

class ManageLocationScreen extends StatelessWidget {
  const ManageLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            GlassAppBar(
              showBack: true,
              showAction: false,
              title: 'Manage Location',
            ),


            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) =>
                      SizedBox(height: 10.h),
                  itemBuilder: (context, index) {
                    return GlassContainer(
                      blurRadius: 0.20,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                SvgPicture.asset(AppIcons.location),

                                SizedBox(width: 10.w,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dhaka, Bangladesh',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      'Mohakhali',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            /// ❌ Remove Icon
                           SvgPicture.asset(AppIcons.delete)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),


            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: GlassButton(text: 'Add Location', onTap: (){

                onTapAddLocation();
              }),
            ),

            SizedBox(height: 80.h,),

          ],
        ),
      ),
    );
  }


  void onTapAddLocation(){

    Get.dialog(
      Dialog(
        backgroundColor: AppColors.transparent,
        child: GlassContainer(
          blurRadius: 0.20,
          height: 280.h,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CommonText(text: 'Add Location',fontSize: 20.sp,fontWeight: FontWeight.w500,),

                  SizedBox(width: 80.w,),
                  
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                      child: SvgPicture.asset(AppIcons.cancel)),
                  
                ],
              ),
              
              SizedBox(height: 20.h,),
              
              
              CommonText(text: 'Location',fontSize: 14.sp,fontWeight: FontWeight.w500,),

              SizedBox(height: 6.h,),

              CommonTextField(),

              SizedBox(height: 20.h,),

              GlassButton(text: "Confirm", onTap: (){
                Get.back();
              })


            ],
          ),
        ),
      ),
      barrierDismissible: true,
    );

  }







}
