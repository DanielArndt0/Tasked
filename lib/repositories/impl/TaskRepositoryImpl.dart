import 'package:tasked/models/TaskModel.dart';
import 'package:tasked/repositories/TaskRepository.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl._();
  static final TaskRepositoryImpl instance = TaskRepositoryImpl._();

  final List<TaskModel> _list = [
    TaskModel(
      description: "Ir ao mercado",
      date: DateTime.now().add(Duration(hours: 3)),
    ),
    TaskModel(
      description: "Ir ao médico",
      date: DateTime.now().add(Duration(days: 2)),
    ),
    TaskModel(
      description: "Ir para faculdade",
      date: DateTime.now().add(Duration(hours: 1)),
    ),
    TaskModel(
      description: "Ir para faculdade",
      date: DateTime.now().add(Duration(hours: 1)),
    ),
  ];

  @override
  List<TaskModel> getAll() {
    return _list;
  }

  @override
  void insert(TaskModel object) {
    _list.add(object);
  }

  @override
  void remove(TaskModel object) {
    _list.remove(object);
  }

  @override
  List<TaskModel> getAllByDate(DateTime date) {
    return _list.where((element) {
      return element.date.day == date.day &&
          element.date.month == date.month &&
          element.date.year == date.year;
    }).toList();
  }
}
