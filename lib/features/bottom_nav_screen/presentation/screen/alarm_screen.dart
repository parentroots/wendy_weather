import 'package:flutter/material.dart';

import '../../../../component/background_widget/common_background.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CommonBackground(child: Column(children: [
        Text("data")
      ],)),
    );
  }
}
