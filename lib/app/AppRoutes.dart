import 'package:flutter/material.dart';
import 'package:tasked/app/NamedRoutes.dart';
import 'package:tasked/screens/CalendarScreen.dart';
import 'package:tasked/screens/HomeScreen.dart';
import 'package:tasked/screens/NewTaskScreen.dart';
import 'package:tasked/screens/TaskDetailsScreen.dart';

class RouteHandler {
  static final Map<String, Widget Function(BuildContext context)> routes = {
    NamedRoutes.home: (context) => HomeScreen(),
    NamedRoutes.calendar: (context) => CalendarScreen(),
    NamedRoutes.newTask: (context) => NewTaskScreen(),
    NamedRoutes.taskDetails: (context) => TaskDetailsScreen(),
  };
}
