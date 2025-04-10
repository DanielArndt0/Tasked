import 'package:tasked/models/TaskModel.dart';
import 'package:tasked/repositories/Repository.dart';

abstract class TaskRepository implements Repository<TaskModel> {
  List<TaskModel> getAllByDate(DateTime date);
}
