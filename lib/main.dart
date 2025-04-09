import 'package:flutter/material.dart';
import 'package:tasked/app/AppRoutes.dart';
import 'package:tasked/app/AppTheme.dart';
import 'package:tasked/app/NamedRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasked',
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      theme: lightModeTheme,
      darkTheme: darkModeTheme,
      routes: RouteHandler.routes,
      initialRoute: NamedRoutes.home,
    );
  }
}
