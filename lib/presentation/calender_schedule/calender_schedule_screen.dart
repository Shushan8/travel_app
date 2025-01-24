import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/calender_schedule/widget/calendar_card.dart';
import 'package:travel_app/presentation/calender_schedule/widget/calender.dart';
import 'package:travel_app/presentation/calender_schedule/widget/select_date.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/widget/custom_bar.dart';

@RoutePage()
class CalenderScheduleScreen extends StatefulWidget {
  const CalenderScheduleScreen({super.key});

  @override
  State<CalenderScheduleScreen> createState() => _CalenderScheduleScreenState();
}

class _CalenderScheduleScreenState extends State<CalenderScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(
        text: 'New Plan',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: CalendarCard(),
            ),
            Calender(),
            Text(
              'Select dates',
              style: AppTypography.s16w6cBl,
            ),
            SelectDate(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
