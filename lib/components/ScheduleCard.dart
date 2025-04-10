import 'package:flutter/material.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/models/TaskModel.dart';

class ScheduleCard extends StatelessWidget {
  final TaskModel task;
  const ScheduleCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: task.tags?.first.color?.shade50 ?? Colors.green.shade50,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: task.tags?.first.color ?? Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text(
                task.description,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: AppColors.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
