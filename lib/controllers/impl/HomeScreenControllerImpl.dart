import 'package:tasked/controllers/HomeScreenController.dart';
import 'package:tasked/controllers/NavigationController.dart';
import 'package:tasked/models/TagModel.dart';
import 'package:tasked/models/TaskModel.dart';
import 'package:tasked/repositories/TaskRepository.dart';

class HomeScreenControllerImpl implements HomeScreenController {
  HomeScreenControllerImpl({
    required this.navigationController,
    required this.taskRepository,
  });

  final NavigationController navigationController;
  final TaskRepository taskRepository;

  @override
  void fabPressed() {
    navigationController.goToNewTask();
  }

  @override
  List<TaskModel> getTasksByTag({required TagModel tag}) {
    return taskRepository.getAllByTag(tag);
  }
}
