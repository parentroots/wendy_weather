import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;

  const CommonAppBar({
    Key? key,
    required this.title,
    this.showBack = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: showBack
          ? InkWell(
        onTap: Get.back,
          child: Image.asset(AppImages.back))
          : null,
      centerTitle: true,
      title: Text(
        textAlign: TextAlign.center,
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500,fontSize: 22.sp),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
