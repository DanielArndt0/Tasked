import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:tasked/controllers/CalendarScreenController.dart';
import 'package:tasked/models/TaskModel.dart';
import 'package:tasked/repositories/TaskRepository.dart';

class CalendarScreenControllerImpl implements CalendarScreenController {
  CalendarScreenControllerImpl({required this.repository});

  final TaskRepository repository;

  final _dayTaskNotifier = ValueNotifier<List<TaskModel>>([]);
  final _selectedDateNotifier = ValueNotifier<DateTime>(DateTime.now());

  @override
  ValueNotifier<List<TaskModel>> get dayTasksNotifier => _dayTaskNotifier;

  @override
  ValueNotifier<DateTime> get selectedDateNotifier => _selectedDateNotifier;

  @override
  void refreshDayTasks() {
    _dayTaskNotifier.value = repository.getAllByDate(
      _selectedDateNotifier.value,
    );
  }
}
