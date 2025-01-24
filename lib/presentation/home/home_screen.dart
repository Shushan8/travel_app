import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/widget/app_background.dart';
import 'package:travel_app/presentation/core/widget/button_navigation.dart';
import 'package:travel_app/presentation/home/widget/profile_header.dart';
import 'package:travel_app/presentation/home/widget/search_places.dart';
import 'package:travel_app/presentation/home/widget/tab_selector.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileHeader(),
                  SizedBox(height: 25),
                  SearchPlaces(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Places',
                        style: AppTypography.s16w6CF2,
                      ),
                      Text(
                        'View all',
                        style: AppTypography.s16w6C8,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  TabSelector(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: ButtonNavigation(
        selectedIndex: 0,
      ),
    );
  }
}
