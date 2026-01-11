import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wendy_weather/component/app_bar/glass_app_bar.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/text/common_text.dart';
class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GlassAppBar(showAction: false, title: 'Help & Support'),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),

                  Align(
                    alignment: Alignment.center,
                      child: CommonText(
                        textAlign: TextAlign.center,
                          maxLines: 2,
                          text: 'Weather got you down? I’ve got you. Drop me a line and I’ll fetch the humans.')),


                  SizedBox(height: 29.h,),

                  CommonText(
                    text: 'Subject',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),

                  SizedBox(height: 6.h),

                  GlassTextField(borderRadius: 4, hintText: 'Enter Subject'),

                  SizedBox(height: 20.h),
                  CommonText(
                    text: 'Message',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),

                  SizedBox(height: 6.h),

                  GlassTextField(
                    maxLine: 5,
                    borderRadius: 4,
                    hintText: 'Enter Your Message',
                  ),
                  SizedBox(height:11.h),

                  CommonText(
                    textAlign: TextAlign.start,
                    maxLines: 5,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      text: 'Human support incoming. Not AI-generated. Not \n outsourced. Not boring. You’ll get a real person. A good\n One.'),
                  
                  
                  SizedBox(height: 43.h,),
                  
                  
                  GlassButton(text: 'Send', onTap: (){


                      debugPrint("😁❤️😊😍👍💕👌🤷‍♀️🤦‍♂️🤦‍♀️😒❤️💕🤦‍♂️🤞✌️🤷‍♂️🤷‍♂️🤷‍♀️❤️👍👍👍😜💖🤷‍♀️🤣😂");



                  })
                  
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GlassTextField extends StatelessWidget {
  final String hintText;
  final double blurRadius;
  final double borderRadius;
  final TextEditingController? controller;
  final int? maxLine;

  const GlassTextField({
    super.key,
    required this.hintText,
    this.blurRadius = 10,
    this.borderRadius = 12,
    this.controller,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurRadius, sigmaY: blurRadius),
        child: Container(
          decoration: BoxDecoration(

            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: Colors.white.withOpacity(0.3)),


            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.20),
                blurRadius: 0.5,


              ),
              BoxShadow(
                color: Color(0xFF36698b).withOpacity(0.60),
                spreadRadius: -3.0,
                blurRadius: 20.0,
              ),
            ],

          ),
          child: TextField(
            maxLines: maxLine,
            controller: controller,
            style: const TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white70),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
