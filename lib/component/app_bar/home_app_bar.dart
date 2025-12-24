import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wendy_weather/utils/constants/app_images.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final VoidCallback onTapAction;

  const HomeAppBar({
    Key? key,
    required this.title,
    this.showBack = true, required this.onTapAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Text(
        textAlign: TextAlign.center,
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500,fontSize: 22.sp),
      ),

      actions: [
        IconButton(onPressed: onTapAction, icon: Icon(Icons.menu,color: Colors.white,))
      ],

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
