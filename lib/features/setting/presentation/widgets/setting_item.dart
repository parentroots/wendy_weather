import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_icons.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.title,  required this.leadingIcon, this.onTap});

  final String title;
  final String leadingIcon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: GlassContainer(width: double.maxFinite, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          Row(
            children: [

              SvgPicture.asset(leadingIcon),
              SizedBox(width: 6.w,),
              CommonText(text: title,fontSize: 14.sp,)

            ],
          ),

          Icon(Icons.arrow_forward_ios,color: Colors.white,),


        ],
      )),
    );
  }
}
