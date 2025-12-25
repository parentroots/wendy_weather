import 'package:flutter/material.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';
import 'package:wendy_weather/component/glass_button/glass_button.dart';

import '../../../../component/app_bar/glass_app_bar.dart';

class MyPackageScreen extends StatelessWidget {
  const MyPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(child: Column(children: [
        GlassAppBar(
          showBack: true,
          showAction: false,
          title: 'Restore Premium',
        ),


        Column(children: [])])),
    );
  }
}
