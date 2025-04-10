import 'package:flutter/material.dart';

class TagModel {
  String label;
  MaterialColor? color;

  TagModel({required this.label, this.color = Colors.green});
}
