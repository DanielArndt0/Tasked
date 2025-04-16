import 'package:flutter/material.dart';
import 'package:tasked/models/TagModel.dart';
import 'package:tasked/repositories/TagsRepository.dart';

class TagsRepositoryImpl implements TagsRepository {
  TagsRepositoryImpl._();
  static final TagsRepositoryImpl instance = TagsRepositoryImpl._();

  final List<TagModel> _list = [
    TagModel(label: 'Mental Health', color: Colors.blue),
    TagModel(label: 'Health', color: Colors.green),
    TagModel(label: 'Work', color: Colors.red),
    TagModel(label: 'School', color: Colors.orange),
  ];

  @override
  List<TagModel> getAll() {
    return _list;
  }

  @override
  void insert(TagModel object) {
    _list.add(object);
  }

  @override
  void remove(TagModel object) {
    _list.remove(object);
  }
}
