import 'package:flutter/material.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/components/ScheduleCard.dart';
import 'package:tasked/models/TaskModel.dart';

class HourCard extends StatelessWidget {
  final int hour;
  final bool isExpired;
  final Widget Function()? onHour;
  const HourCard({super.key, required this.hour, this.onHour, required this.isExpired});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${hour.toString().padLeft(2, '0')}:00',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.subtext,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: ScheduleCard(
              task: TaskModel(
                description: 'Ir ao mercado',
                date: DateTime.now(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
