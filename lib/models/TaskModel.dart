import 'package:tasked/models/TagModel.dart';

class TaskModel {
  String description;
  DateTime date;
  bool? isDone;
  List<TaskModel>? subtasks;
  List<TagModel>? tags;

  TaskModel({
    required this.description,
    required this.date,
    this.isDone,
    this.subtasks,
    this.tags,
  });
}
