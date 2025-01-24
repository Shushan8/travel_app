import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/travel/bloc/hotel_bloc.dart';
import 'package:travel_app/application/weather/bloc/weather_bloc.dart';
import 'package:travel_app/di/injectable.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/home/widget/places_card.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HotelBloc(getIt())
              ..add(
                const HotelEvent.fetchHotels('non-Fiction'),
              ),
          ),
          BlocProvider(
            create: (context) => WeatherBloc(getIt())
              ..add(
                const WeatherEvent.fetchWeather('Prague'),
              ),
          ),
        ],
        child: BlocBuilder<HotelBloc, HotelState>(
          builder: (context, hotelState) {
            return hotelState.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (message) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              loaded: (hotels) => BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, weatherState) {
                  return weatherState.when(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (message) => Center(
                      child: Text(message),
                    ),
                    loaded: (weather) => SizedBox(
                      height: 330,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: hotels.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 15),
                        itemBuilder: (context, index) {
                          final hotel = hotels[index];
                          return InkWell(
                            onTap: () {
                              context.router.push(
                                PlacesInformationRoute(
                                  hotel: hotel,
                                  weather: weather,
                                ),
                              );
                            },
                            child: PlacesCard(
                              image: hotel.imageUrl.isNotEmpty
                                  ? hotel.imageUrl
                                  : Assets.images.image1.path,
                              address: hotel.address,
                              name: hotel.name,
                              shortName: hotel.shortName,
                              star: hotel.stars,
                            ),
                          );
                        },
                      ),
                    ),
                    initial: () => Text('Loading weather...'),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
