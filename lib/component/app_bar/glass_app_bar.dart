import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../glass_container/glass_container.dart';

class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final bool showAction;
  final VoidCallback? onBackTap;
  final VoidCallback? onActionTap;
  final IconData actionIcon;

  const GlassAppBar({
    super.key,
    required this.title,
    this.showBack = true,
    this.showAction = true, // 👈 NEW
    this.onBackTap,
    this.onActionTap,
    this.actionIcon = Icons.menu,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      roundedBorder: 0.0,
      middleShadow: 0.90,
      height: preferredSize.height,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [

            SizedBox(
              width: 40.w,
              child: showBack
                  ? GestureDetector(
                onTap: onBackTap ?? () => Get.back(),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20.sp,
                ),
              )
                  : const SizedBox(),
            ),

            /// TITLE (ALWAYS CENTER)
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            /// ACTION (OPTIONAL)
            SizedBox(
              width: 40.w,
              child: showAction
                  ? GestureDetector(
                onTap: onActionTap,
                child: Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.6),
                      width: 3,
                    ),
                  ),
                  child: Icon(
                    actionIcon,
                    color: Colors.white,
                    size: 18.sp,
                  ),
                ),
              )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
