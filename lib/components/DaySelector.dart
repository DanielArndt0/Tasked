import 'package:flutter/material.dart';
import 'package:tasked/components/WeekCard.dart';

class DaySelector extends StatefulWidget {
  const DaySelector({super.key});

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(width: 10),
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final date = DateTime.now().add(Duration(days: index));
            final isSelected =
                selectedDate != null &&
                selectedDate!.day == date.day &&
                selectedDate!.month == date.month &&
                selectedDate!.year == date.year;

            return WeekCard(
              date: DateTime.now().add(Duration(days: index)),
              isSelected: isSelected,
              onTap: () {
                setState(() {
                  selectedDate = date;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
