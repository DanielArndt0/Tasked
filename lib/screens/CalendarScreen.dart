import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/components/AppBarTitle.dart';
import 'package:tasked/components/DaySelector.dart';
import 'package:tasked/components/ScheduleView.dart';
import 'package:tasked/controllers/CalendarScreenController.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late final CalendarScreenController _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<CalendarScreenController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(name: "Calendar", date: DateTime.now()),
        backgroundColor: AppColors.appBar,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            DaySelector(
              onSelected: (selectedDate) {
                _controller.selectedDateNotifier.value = selectedDate;
                _controller.refreshDayTasks();
              },
            ),
            SizedBox(height: 20),
            ValueListenableBuilder(
              valueListenable: _controller.selectedDateNotifier,
              builder: (BuildContext context, DateTime date, Widget? child) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ScheduleView(
                    dayTasks: _controller.dayTasksNotifier.value,
                    selectedDate: date,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
