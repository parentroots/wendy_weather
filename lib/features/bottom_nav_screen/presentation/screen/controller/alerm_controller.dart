import 'package:get/get.dart';

class AlarmController extends GetxController {
  var selectedYear = 2025.obs;
  var selectedMonth = 9.obs; // September
  var selectedDay = 20.obs;
  var selectedHour = 4.obs;
  var selectedMinute = 0.obs;
  var is24HourFormat = true.obs;

  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  final List<String> weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  String getTimeRemaining() {
    final now = DateTime.now();
    final alarmTime = DateTime(
      selectedYear.value,
      selectedMonth.value,
      selectedDay.value,
      selectedHour.value,
      selectedMinute.value,
    );

    final difference = alarmTime.difference(now);
    final hours = difference.inHours;
    final minutes = difference.inMinutes % 60;

    return 'Alarm in $hours Hours $minutes Minutes';
  }
}