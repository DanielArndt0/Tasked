class TaskModel {
  String description;
  bool isDone;
  List<TaskModel>? subtasks;

  TaskModel({
    required this.description,
    required this.isDone,
    this.subtasks,
  });

  
}
