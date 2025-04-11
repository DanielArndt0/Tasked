import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasked/components/AppBarTitle.dart';
import 'package:tasked/components/TaskCard.dart';
import 'package:tasked/controllers/HomeScreenController.dart';
import 'package:tasked/models/TagModel.dart';
import 'package:tasked/models/TaskModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeScreenController _controller;

  @override
  void initState() {
    super.initState();
    _controller = context.read<HomeScreenController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(name: "Today", date: DateTime.now()),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 50, right: 50),
        child: SingleChildScrollView(
          child: TaskCard(
            task: TaskModel(
              description: "Ir no mercado",
              date: DateTime.now(),
              tags: [
                TagModel(label: 'Mental Health', color: Colors.blue),
                TagModel(label: 'Work', color: Colors.red),
                TagModel(label: 'School', color: Colors.orange),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.fabPressed,
        child: Icon(Icons.add),
      ),
    );
  }
}
