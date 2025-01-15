import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime focusedDay = DateTime.now();
  List<DateTime> _selectedDays = []; // Список выбранных дат
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: DateTime.now(),
      calendarFormat: CalendarFormat.month,
      selectedDayPredicate: (day) {
        return _selectedDays.contains(day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          if (_selectedDays.contains(selectedDay)) {
            _selectedDays.remove(selectedDay);
          } else {
            _selectedDays.add(selectedDay);
          }
        });
      },
      headerStyle: HeaderStyle(
        leftChevronIcon: Row(
          children: [
            Text(
              'Select dates',
              style: AppTypography.s16w6cBl,
            ),
            SizedBox(width: 20),
            Icon(Icons.chevron_left)
          ],
        ),
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: AppColors.brightRedOrange,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: AppColors.brightRedOrange,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
