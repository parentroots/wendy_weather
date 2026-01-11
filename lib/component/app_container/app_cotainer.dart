import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppContainer extends StatelessWidget {

  final Widget child;
  const AppContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 384.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.white54),
          BoxShadow(
            color: Color(0xFF36698b).withOpacity(0.90),
            spreadRadius: -5.0,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
