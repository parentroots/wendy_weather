import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/features/auth/sign%20up/presentation/controller/sign_up_controller.dart';

class MultiSelectList extends StatelessWidget {
  final List<String> items;
  final String? controllerId; // Optional controller ID for multiple instances

  const MultiSelectList({super.key, required this.items, this.controllerId});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController(), tag: controllerId);

    return GetBuilder<SignUpController>(
      tag: controllerId,
      builder: (controller) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemBuilder: (context, index) {
            final item = items[index];
            final isSelected = controller.isSelected(item);
            return InkWell(
              onTap: () => controller.toggleSelection(item),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                decoration: BoxDecoration(
                  
                   borderRadius: BorderRadius.circular(4.r),

                  // // color: isSelected
                  // //     ? Color(0xFF7AADCE) // Selected color (lighter blue)
                  // //     : Color(0xFF4A7BA7).withOpacity(0.5), // Default color
                  // // border: Border.all(
                  // //   color: Colors.white.withOpacity(0.3),
                  // //   width: 1,
                  // // ),
                  //
                  //
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: isSelected?Colors.white.withOpacity(0.40):Colors.white.withOpacity(0.20),
                  //     blurRadius: 0.5,
                  //
                  //   ),
                  //   BoxShadow(
                  //     color: isSelected?Color(0xFF36698b).withOpacity(0.50):Color(0xFF36698b).withOpacity(0.80),
                  //     spreadRadius: -3.0,
                  //     blurRadius: 20.0,
                  //   ),
                  // ],

                  color: isSelected?Color(0xFF5b86a3):Color(0xFF3b7195)
                  

                ),
                child: Text(
                  item,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
