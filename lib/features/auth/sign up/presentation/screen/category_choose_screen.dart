import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/component/text_field/common_text_field.dart';
import 'package:wendy_weather/config/route/app_routes.dart';
import 'package:wendy_weather/features/auth/sign%20up/presentation/controller/sign_up_controller.dart';

import '../../../../../component/app_bar/common_app_bar.dart';
import '../../../../../utils/constants/app_string.dart';
import '../widget/category_choose_widget.dart';

class CategoryChooseScreen extends StatefulWidget {
  const CategoryChooseScreen({super.key});

  @override
  State<CategoryChooseScreen> createState() => _CategoryChooseScreenState();
}

class _CategoryChooseScreenState extends State<CategoryChooseScreen> {
  final List<String> activities = [
    'Gardening',
    'Ski Trips',
    'Dog Walks',
    'Yoga Outside',
    'Travel Alerts',
    'Road Trip Planning',
    'Just A Simple Daily Check-In',
    'Golf',
    'Fishing',
    'Camping'
  ];

  List<String> selectedActivities = [];

  @override
  Widget build(BuildContext context) {
    // GetX Controller
    final controller = Get.find<SignUpController>();

    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            // App Bar
            CommonAppBar(title: AppString.wendyWantsToKnowYou),

            // Main Scrollable Area
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Intro Text
                    CommonText(
                      text: 'Hey, can I ask you something',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 6.h),

                    CommonText(
                      text: AppString.whatKindsOfThingsAreYouInto,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                    ),
                    SizedBox(height: 16.h),

                    // MultiSelect List
                    MultiSelectList(
                      items: activities,

                    ),


                    SizedBox(height: 10.h,),

                    CommonTextField(

                      borderColor: Colors.transparent,
                      borderRadius: 4,
                      hintTextColor: Color(0xFFCFCACA),
                      hintText:'Add Your Own Activities',
                      maxLines: 5,
                    ),

                    SizedBox(height: 26.h,),
                    
                    
                    GlassButton(text: 'Lets Do This', onTap: (){

                      Get.toNamed(AppRoutes.otpVerifyScreen);

                    }),


                    SizedBox(height: 15.h,),



                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
