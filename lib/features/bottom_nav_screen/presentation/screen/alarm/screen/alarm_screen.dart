import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wendy_weather/component/glass_container/glass_container.dart';
import 'package:wendy_weather/component/text/common_text.dart';
import 'package:wendy_weather/utils/constants/app_icons.dart';
import '../../../../../../component/app_bar/glass_app_bar.dart';
import '../../../../../../component/background_widget/common_background.dart';
import '../../controller/alerm_controller.dart';
import '../widget/alarm_glass_container.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key});

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  // List to track each alarm's on/off state individually
  List<bool> alarmStates = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        child: Column(
          children: [
            GlassAppBar(
              title: "Wendy AI alarm",
              showBack: false,
              onBackTap: () => Get.back(),

              onActionTap: () {
                showAddAlarmDialog();
              },
              actionIcon: Icons.add,
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    return GlassContainer(
                      onTap: () {
                        showAlarmEditDialog();
                      },

                      width: double.maxFinite,
                      child: Padding(
                        padding: EdgeInsets.all(12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CommonText(
                                  text: 'Sut-Sun',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),

                                SizedBox(
                                  height: 19.h,
                                  width: 40.w,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: alarmStates[index]
                                            ? Colors.white
                                            : Colors.grey,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Switch(
                                      trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
                                      thumbColor: MaterialStateProperty.all(Colors.white),
                                      activeTrackColor: Colors.transparent,
                                      inactiveTrackColor: Colors.transparent,
                                      value: alarmStates[index],
                                      onChanged: (bool value) {
                                        setState(() {
                                          alarmStates[index] = value;
                                        });
                                      },
                                    ),

                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 7.h),

                            CommonText(
                              text: '12:00 Pm',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),

                            SizedBox(height: 7.h),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CommonText(text: 'Alarm In 20 Hours 7 Minutes'),
                                SvgPicture.asset(AppIcons.delete),
                              ],
                            ),

                            SizedBox(height: 30.h),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Edit Alarm show dialog
void showAlarmEditDialog() {
  final AlarmController controller = Get.put(AlarmController());

  Get.dialog(
    Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 320,
          constraints: BoxConstraints(maxHeight: Get.height * 0.75),
          child: AlarmGlassContainer(
            width: double.maxFinite,
            borderRadius: BorderRadius.circular(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Alarm header section start =================================================
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Edit Alarm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Obx(() => Text(
                            controller.getTimeRemaining(),
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          )),
                        ],
                      ),
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),



                /// Alarm header section end =================================================

                // // Year and Month Selector
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Obx(() => Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               '${controller.selectedYear}',
                //               style: TextStyle(color: Colors.white, fontSize: 16),
                //             ),
                //             Icon(Icons.arrow_drop_down, color: Colors.white70),
                //           ],
                //         )),
                //       ),
                //       SizedBox(width: 12),
                //       Expanded(
                //         child: Obx(() => Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               controller.months[controller.selectedMonth.value - 1],
                //               style: TextStyle(color: Colors.white, fontSize: 16),
                //             ),
                //             Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 16),
                //           ],
                //         )),
                //       ),
                //     ],
                //   ),
                // ),


                ///  month section start =================================================

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          CommonText(text: '2025',fontWeight: FontWeight.w500,fontSize: 20.sp,),
                          SizedBox(width: 5.w,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,))
                        ],
                      ),


                      Row(
                        children: [
                          CommonText(text: 'September',fontWeight: FontWeight.w500,fontSize: 20.sp,),
                          SizedBox(width: 5.w,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
                        ],
                      ),





                    ],
                  ),
                ),

                ///  month section end =================================================


                SizedBox(height: 16),

                ///  days section start =================================================

                // Day Selector
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left, color: Colors.white70),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            int day = 20 + index;
                            return Obx(() => GestureDetector(
                              onTap: () => controller.selectedDay.value = day,
                              child: Container(
                                width: 45,
                                margin: EdgeInsets.symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: controller.selectedDay.value == day
                                      ? Colors.white.withOpacity(0.3)
                                      : Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.weekDays[index],
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '$day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right, color: Colors.white70),
                    ),
                  ],
                ),

                SizedBox(height: 20),


                ///  days section end =================================================

                ///  hours section start =================================================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hours',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      AlarmGlassContainer(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        borderRadius: BorderRadius.circular(30.r),

                        child: Text(
                          '24 Hours',
                          style: TextStyle(color: Colors.white70, fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12),

                // Hours Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 9,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      int hour = index + 1;
                      return Obx(() => GestureDetector(
                        onTap: () => controller.selectedHour.value = hour,
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedHour.value == hour
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              hour.toString().padLeft(2, '0'),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ));
                    },
                  ),
                ),

                SizedBox(height: 20),


                ///  hours section end =================================================

             ///  Minute section start =================================================

                // Minutes Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Minutes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 12),

                // Minutes Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 9,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      int minute = index + 1;
                      return Obx(() => GestureDetector(
                        onTap: () => controller.selectedMinute.value = minute,
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedMinute.value == minute
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              minute.toString().padLeft(2, '0'),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ));
                    },
                  ),
                ),

                SizedBox(height: 20),


                ///  Minute section end =================================================

                // Bottom Buttons
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: AlarmGlassContainer(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          borderRadius: BorderRadius.circular(12),
                          child: Center(
                            child: Text(
                              'Ringtone',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                            Get.snackbar(
                              'Alarm Set',
                              'Alarm set for ${controller.selectedHour}:${controller.selectedMinute.toString().padLeft(2, '0')}',
                              backgroundColor: Colors.white.withOpacity(0.2),
                              colorText: Colors.white,
                            );
                          },
                          child: AlarmGlassContainer(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            borderRadius: BorderRadius.circular(12),
                            child: Center(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
  );
}


// Main function to show dialog
void showAddAlarmDialog() {
  final AlarmController controller = Get.put(AlarmController());

  Get.dialog(
    Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: 320,
          constraints: BoxConstraints(maxHeight: Get.height * 0.75),
          child: AlarmGlassContainer(
            width: double.maxFinite,
            borderRadius: BorderRadius.circular(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Alarm header section start =================================================
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add Alarm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                        ],
                      ),

                    ],
                  ),
                ),

                /// Alarm header section end =================================================




                ///  month section start =================================================

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          CommonText(text: '2025',fontWeight: FontWeight.w500,fontSize: 20.sp,),
                          SizedBox(width: 5.w,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,))
                        ],
                      ),


                      Row(
                        children: [
                          CommonText(text: 'September',fontWeight: FontWeight.w500,fontSize: 20.sp,),
                          SizedBox(width: 5.w,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
                        ],
                      ),





                    ],
                  ),
                ),

                ///  month section end =================================================


                SizedBox(height: 16),

                ///  days section start =================================================

                // Day Selector
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left, color: Colors.white70),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            int day = 20 + index;
                            return Obx(() => GestureDetector(
                              onTap: () => controller.selectedDay.value = day,
                              child: Container(
                                width: 45,
                                margin: EdgeInsets.symmetric(horizontal: 3),
                                decoration: BoxDecoration(
                                  color: controller.selectedDay.value == day
                                      ? Colors.white.withOpacity(0.3)
                                      : Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(50.r),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.weekDays[index],
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '$day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right, color: Colors.white70),
                    ),
                  ],
                ),

                SizedBox(height: 20),


                ///  days section end =================================================

                ///  hours section start =================================================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hours',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      AlarmGlassContainer(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        borderRadius: BorderRadius.circular(30.r),

                        child: Text(
                          '24 Hours',
                          style: TextStyle(color: Colors.white70, fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 12),

                // Hours Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 9,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      int hour = index + 1;
                      return Obx(() => GestureDetector(
                        onTap: () => controller.selectedHour.value = hour,
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedHour.value == hour
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              hour.toString().padLeft(2, '0'),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ));
                    },
                  ),
                ),

                SizedBox(height: 20),


                ///  hours section end =================================================

                ///  Minute section start =================================================

                // Minutes Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Minutes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 12),

                // Minutes Grid
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 9,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      int minute = index + 1;
                      return Obx(() => GestureDetector(
                        onTap: () => controller.selectedMinute.value = minute,
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedMinute.value == minute
                                ? Colors.white.withOpacity(0.3)
                                : Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              minute.toString().padLeft(2, '0'),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ));
                    },
                  ),
                ),

                SizedBox(height: 20),


                ///  Minute section end =================================================

                // Bottom Buttons
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: AlarmGlassContainer(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          borderRadius: BorderRadius.circular(12),
                          child: Center(
                            child: Text(
                              'Ringtone',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                            Get.snackbar(
                              'Alarm Add',
                              'Alarm Adding successful ',
                              backgroundColor: Colors.white.withOpacity(0.2),
                              colorText: Colors.white,
                            );
                          },
                          child: AlarmGlassContainer(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            borderRadius: BorderRadius.circular(12),
                            child: Center(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
  );
}

