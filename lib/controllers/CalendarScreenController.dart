import 'dart:core';

import 'package:flutter/widgets.dart';
import 'package:tasked/models/TaskModel.dart';

abstract class CalendarScreenController {
  ValueNotifier<DateTime> get selectedDateNotifier;
  ValueNotifier<List<TaskModel>> get dayTasksNotifier;
  void refreshDayTasks();
}
