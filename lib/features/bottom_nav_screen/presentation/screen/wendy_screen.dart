import 'package:flutter/material.dart';
import 'package:wendy_weather/component/background_widget/common_background.dart';


class WendyScreen extends StatelessWidget {
  const WendyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CommonBackground(child: Column(children: [
        Text("data")
      ],)),
    );
  }
}
