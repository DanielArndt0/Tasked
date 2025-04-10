import 'package:flutter/material.dart';
import 'package:tasked/models/TagModel.dart';

class TagCard extends StatelessWidget {
  final TagModel tag;
  const TagCard({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 3, left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: tag.color!.shade50,
      ),
      child: Text(
        tag.label,
        style: TextStyle(
          fontSize: 12,
          color: tag.color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
