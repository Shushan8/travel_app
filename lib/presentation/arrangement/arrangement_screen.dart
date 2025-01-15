import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/arrangement/widget/bottom_sheets.dart';
import 'package:travel_app/presentation/core/widget/custom_bar.dart';
import 'package:travel_app/presentation/weather/widget/snow_section.dart';
@RoutePage()

class ArrangementScreen extends StatelessWidget {
  const ArrangementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomBar(
        text: 'Add itinerary',
      ),
      body: SnowSection(widget: BottomSheets(),)

    );
  }
}