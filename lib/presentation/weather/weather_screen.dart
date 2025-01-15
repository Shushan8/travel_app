import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/widget/app_background.dart';
import 'package:travel_app/presentation/core/widget/custom_bar.dart';
import 'package:travel_app/presentation/core/widget/button_navigation.dart';
import 'package:travel_app/presentation/weather/widget/weather_tab_selector.dart';

@RoutePage()
class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: CustomBar(
        text: 'Itinerary Form ',
        icon: GestureDetector(),
      ),
      body: AppBackground(
        child: SafeArea(
          child: WeatherTabSelector(),
        ),
      ),
      bottomNavigationBar: ButtonNavigation(
        selectedIndex: 1,
      ),
    );
  }
}
