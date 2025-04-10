import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/components/AppBarTitle.dart';
import 'package:tasked/components/DaySelector.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(name: "Calendar", date: DateTime.now()),
        backgroundColor: AppColors.appBar,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          DaySelector(),
          // ScheduleView(),
        ],
      ),
    );
  }
}
