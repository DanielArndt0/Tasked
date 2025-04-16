import 'package:flutter/material.dart';

class TagModel {
  String label;
  MaterialColor? color;

  TagModel({required this.label, this.color = Colors.green});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TagModel && other.label == label && other.color == color;
  }
}
