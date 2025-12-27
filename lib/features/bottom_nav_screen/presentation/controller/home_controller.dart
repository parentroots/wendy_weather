import 'package:get/get.dart';

import '../../../../utils/constants/app_images.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> get hourlyData => [
    {
      'icon': AppImages.sun,
      'time': '12:00',
      'period': 'PM',
      'temperature': '28',
    },
    {
      'icon': AppImages.sun,
      'time': '01:00',
      'period': 'PM',
      'temperature': '30',
    },
    {
      'icon': AppImages.sun,
      'time': '02:00',
      'period': 'PM',
      'temperature': '29',
    },
    {
      'icon': AppImages.sun,
      'time': '03:00',
      'period': 'PM',
      'temperature': '27',
    },
    {
      'icon': AppImages.sun,
      'time': '04:00',
      'period': 'PM',
      'temperature': '26',
    },
    {
      'icon': AppImages.sun,
      'time': '05:00',
      'period': 'PM',
      'temperature': '25',
    },
    {
      'icon': AppImages.sun,
      'time': '06:00',
      'period': 'PM',
      'temperature': '24',
    },
    {
      'icon': AppImages.sun,
      'time': '07:00',
      'period': 'PM',
      'temperature': '23',
    },
    {
      'icon': AppImages.sun,
      'time': '08:00',
      'period': 'PM',
      'temperature': '22',
    },
    {
      'icon': AppImages.sun,
      'time': '09:00',
      'period': 'PM',
      'temperature': '21',
    },
    {
      'icon': AppImages.sun,
      'time': '10:00',
      'period': 'PM',
      'temperature': '20',
    },
    {
      'icon': AppImages.sun,
      'time': '11:00',
      'period': 'PM',
      'temperature': '19',
    },
  ];

  List<Map<String, dynamic>> weeklyForecastList = [
    {"day": "Sun", "temp": "32°", "icon": "sunny"},
    {"day": "Mon", "temp": "30°", "icon": "cloudy"},
    {"day": "Tue", "temp": "28°", "icon": "rain"},
  ];
}
