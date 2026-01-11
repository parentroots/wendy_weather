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


  List<Map<String, dynamic>> weeklyData = [
    {
      "day": "Friday",
      "date": "January 26",
      "temp": 70,
      "condition": "Mostly Cloud",
      "rain": 36,
      "wind": 4
    },
    {
      "day": "Saturday",
      "date": "January 27",
      "temp": 72,
      "condition": "Sunny",
      "rain": 10,
      "wind": 6
    },
    {
      "day": "Sunday",
      "date": "January 28",
      "temp": 68,
      "condition": "Partly Cloudy",
      "rain": 20,
      "wind": 5
    },
    {
      "day": "Monday",
      "date": "January 29",
      "temp": 66,
      "condition": "Rainy",
      "rain": 70,
      "wind": 8
    },
    {
      "day": "Tuesday",
      "date": "January 30",
      "temp": 69,
      "condition": "Cloudy",
      "rain": 40,
      "wind": 4
    },
    {
      "day": "Wednesday",
      "date": "January 31",
      "temp": 73,
      "condition": "Sunny",
      "rain": 5,
      "wind": 3
    },
    {
      "day": "Thursday",
      "date": "February 1",
      "temp": 71,
      "condition": "Mostly Sunny",
      "rain": 15,
      "wind": 5
    },
  ];


}
