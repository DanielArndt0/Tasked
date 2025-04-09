import 'package:flutter/material.dart';
import 'package:tasked/app/AppColors.dart';
import 'package:tasked/utils/Format.dart';

class AppBarTitle extends StatelessWidget {
  final String name;
  final DateTime date;
  const AppBarTitle({super.key, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$name ",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 36,
          color: AppColors.text,
        ),
        children: [
          TextSpan(
            text: "${date.day.toString()} ${Format.monthToString(date.month)}",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: AppColors.subtext,
            ),
          ),
        ],
      ),
    );
  }
}
