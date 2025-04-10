import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasked/app/AppColors.dart';

class WeekCard extends StatelessWidget {
  final DateTime date;
  final bool isSelected;
  final void Function()? onTap;
  const WeekCard({
    super.key,
    required this.date,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        width: 70,
        height: 70,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFF6F6F6) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: isSelected ? Color(0xFF393433) : AppColors.subtext,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.E().format(date).toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isSelected ? Color(0xFF393433) : AppColors.subtext,
              ),
            ),
            Text(
              date.day.toString().padLeft(2, '0'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isSelected ? Color(0xFF393433) : AppColors.subtext,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
