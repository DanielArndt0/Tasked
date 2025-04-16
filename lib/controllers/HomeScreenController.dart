import 'package:tasked/models/TagModel.dart';
import 'package:tasked/models/TaskModel.dart';

abstract class HomeScreenController {
  void fabPressed();
  List<TaskModel> getTasksByTag({required TagModel tag});
}
