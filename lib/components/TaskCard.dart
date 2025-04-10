import 'package:flutter/material.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/components/TagCard.dart';
import 'package:tasked/models/TaskModel.dart';

class TaskCard extends StatefulWidget {
  final TaskModel task;
  const TaskCard({super.key, required this.task});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    final tags = widget.task.tags;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          side: BorderSide(color: AppColors.subtext),
          value: isDone,
          onChanged: (value) {
            setState(() {
              isDone = value!;
              widget.task.isDone = isDone;
            });
          },
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.task.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isDone ? AppColors.subtext : AppColors.text,
                  decoration:
                      isDone ? TextDecoration.lineThrough : TextDecoration.none,
                  fontStyle: isDone ? FontStyle.italic : FontStyle.normal,
                ),
              ),
              if (tags != null && tags.isNotEmpty)
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: tags.map((tag) => TagCard(tag: tag)).toList(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
