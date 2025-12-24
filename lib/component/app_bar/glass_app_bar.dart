import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../glass_container/glass_container.dart';

class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final VoidCallback? onBackTap;
  final VoidCallback? onActionTap;
  final Widget? actionIcon;

  const GlassAppBar({
    Key? key,
    required this.title,
    this.showBack = true,
    this.onBackTap,
    this.onActionTap,
    this.actionIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      topPadding: 15,
      bottomPadding: 15,
      blurRadius: 0.15,
      borderRadius: 0,

      height: preferredSize.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Leading Back Icon
            if (showBack)
              GestureDetector(
                onTap: onBackTap ?? () =>Get.back,
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              )
            else
              SizedBox(width: 24.w), // spacing

            // Title Center
            Expanded(
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 22.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // Optional Action
            // GestureDetector(
            //   onTap: onActionTap,
            //   child: actionIcon ?? SizedBox(width: 24.w),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
