import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/domain/travel/entity/hotel_model.dart';
import 'package:travel_app/domain/weather/entity/weather_model.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/places_information/widget/action_buttons.dart';
import 'package:travel_app/presentation/places_information/widget/details_Info_tile.dart';
import 'package:travel_app/presentation/places_information/widget/information_cart.dart';
import 'package:travel_app/presentation/places_information/widget/information_text.dart';

@RoutePage()
class PlacesInformationScreen extends StatelessWidget {
  final Hotel hotel;
  final Weather weather;
  const PlacesInformationScreen(
      {super.key, required this.hotel, required this.weather});

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
                  child: InformationCart(
                    image: hotel.imageUrl,
                    address: hotel.address,
                    price: hotel.price.toString(),
                    name: hotel.name,
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      'Overview',
                      style: AppTypography.s22w6cB,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Details',
                      style: AppTypography.s16w6cB,
                    )
                  ],
                ),
                SizedBox(height: 10),
                DetailsInfoTile(
                  celsius: weather.temperature.toString(),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  child: InformationText(),
                ),
                SizedBox(height: 10),
                ActionButtons(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
