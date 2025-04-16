import 'package:flutter/material.dart';
import 'package:tasked/components/TagViewer.dart';
import 'package:tasked/controllers/HomeScreenController.dart';
import 'package:tasked/models/TagModel.dart';

class TagsBoard extends StatelessWidget {
  final HomeScreenController controller;
  const TagsBoard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 80,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),

      children: [
        TagViewer(
          tag: TagModel(label: 'Health'),
          quantity:
              controller.getTasksByTag(tag: TagModel(label: "Health")).length,
        ),
        TagViewer(
          tag: TagModel(label: 'Work', color: Colors.red),
          quantity:
              controller
                  .getTasksByTag(
                    tag: TagModel(label: 'Work', color: Colors.red),
                  )
                  .length,
        ),
        TagViewer(
          tag: TagModel(label: 'School', color: Colors.orange),
          quantity:
              controller
                  .getTasksByTag(
                    tag: TagModel(label: 'School', color: Colors.orange),
                  )
                  .length,
        ),
        TagViewer(
          tag: TagModel(label: 'Others', color: Colors.grey),
          quantity:
              controller
                  .getTasksByTag(
                    tag: TagModel(label: 'Others', color: Colors.grey),
                  )
                  .length,
        ),
      ],
    );
  }
}
