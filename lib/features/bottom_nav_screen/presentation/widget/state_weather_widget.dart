import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../component/glass_container/glass_container.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_images.dart';

class StateWeatherWidget extends StatelessWidget {
  const StateWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GlassContainer(
          leftPadding: 14.w,
          rightPadding: 14.w,
          topPadding: 14.h,
          bottomPadding: 14.h,
          blurRadius: 0.20,
          height: 130,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: 'Dhaka',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 12.h),

                  Row(
                    children: [
                      SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: Image.asset(AppImages.cloudy),
                      ),

                      SizedBox(width: 5.w),

                      CommonText(
                        text: 'Sunny',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              CommonText(
                text: '68°F',
                fontWeight: FontWeight.w600,
                fontSize: 40.sp,
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10.h);
      },
      itemCount: 4,
    );
  }
}
