import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/widget/app_background.dart';
import 'package:travel_app/presentation/core/widget/button_navigation.dart';
import 'package:travel_app/presentation/home/widget/profile_header.dart';
import 'package:travel_app/presentation/plan/widget/plan_card.dart';
import 'package:travel_app/presentation/plan/widget/bottom_sheets.dart';

@RoutePage()
class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: AppBackground(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileHeader(),
                        SizedBox(height: 30),
                        Text(
                          'Manali',
                          style: AppTypography.s16w6CF2,
                        ),
                        SizedBox(height: 20),
                        Expanded(child: PlanCard()),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: BottomSheets(),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtonNavigation(
          selectedIndex: 1,
        ));
  }
}
