import 'package:flutter/material.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/components/AppBarTitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(name: "Today", date: DateTime.now()),
        backgroundColor: AppColors.appBar,
      ),
    );
  }
}
