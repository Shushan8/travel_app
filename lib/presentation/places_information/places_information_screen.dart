import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/places_information/widget/action_buttons.dart';
import 'package:travel_app/presentation/places_information/widget/details_Info_tile.dart';
import 'package:travel_app/presentation/places_information/widget/information_cart.dart';
import 'package:travel_app/presentation/places_information/widget/information_text.dart';

@RoutePage()
class PlacesInformationScreen extends StatelessWidget {
  const PlacesInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 400,
                  child: Expanded(
                    child: InformationCart(),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text('Overview', style: AppTypography.s22w6cB),
                    SizedBox(
                      width: 30,
                    ),
                    Text('Details', style: AppTypography.s16w6cB)
                  ],
                ),
                SizedBox(height: 10),
                DetailsInfoTile(),
                SizedBox(height: 20),
                SingleChildScrollView(child: InformationText()),
                SizedBox(height: 10),
                ActionButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
