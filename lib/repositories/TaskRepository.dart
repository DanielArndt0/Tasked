import 'package:tasked/models/TagModel.dart';
import 'package:tasked/models/TaskModel.dart';
import 'package:tasked/repositories/Repository.dart';

abstract class TaskRepository implements Repository<TaskModel> {
  List<TaskModel> getAllByDate(DateTime date);
  List<TaskModel> getAllByTag(TagModel tag);
}
