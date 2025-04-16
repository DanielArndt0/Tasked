import 'package:flutter/material.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/models/TagModel.dart';

class TagViewer extends StatelessWidget {
  final TagModel tag;
  final int quantity;
  const TagViewer({super.key, required this.tag, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: tag.color!.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                quantity.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: AppColors.text,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Text(
                  tag.label,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.text.withAlpha(128),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
