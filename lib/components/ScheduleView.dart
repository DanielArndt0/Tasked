import 'package:flutter/material.dart';
import 'package:tasked/components/HourCard.dart';
import 'package:tasked/components/ScheduleCard.dart';
import 'package:tasked/models/TaskModel.dart';

class ScheduleView extends StatelessWidget {
  final DateTime selectedDate;
  final List<TaskModel> dayTasks;
  const ScheduleView({
    super.key,
    required this.selectedDate,
    required this.dayTasks,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemCount: 24,
      itemBuilder: (context, index) {
        final isExpired = DateTime.now().hour > index;
        // final isCurrentHour = DateTime.now().hour == index;

        return HourCard(
          isExpired: isExpired,
          hour: index,
          onHour: () {
            return ScheduleCard(
              task: TaskModel(description: 'description', date: DateTime.now()),
            );
          },
        );
      },
    );
  }
}
