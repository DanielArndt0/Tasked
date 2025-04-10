import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasked/app/AppRoutes.dart';
import 'package:tasked/app/AppTheme.dart';
import 'package:tasked/app/NamedRoutes.dart';
import 'package:tasked/services/NavigationService.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();
  late final NavigationService _navigationService;

  @override
  void initState() {
    super.initState();
    _navigationService = context.read<NavigationService>();
    _navigationService.navigator = _navigator;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasked',
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      theme: lightModeTheme,
      darkTheme: darkModeTheme,
      routes: RouteHandler.routes,
      initialRoute: NamedRoutes.home,
      navigatorKey: _navigator,
    );
  }
}
