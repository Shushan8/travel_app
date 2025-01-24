import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/domain/travel/entity/hotel_model.dart';
import 'package:travel_app/domain/weather/entity/weather_model.dart';
import 'package:travel_app/presentation/arrangement/arrangement_screen.dart';
import 'package:travel_app/presentation/auth/auth_screen.dart';
import 'package:travel_app/presentation/calender_schedule/calender_schedule_screen.dart';
import 'package:travel_app/presentation/edit_profile/edit_profile_screen.dart';
import 'package:travel_app/presentation/home/home_screen.dart';
import 'package:travel_app/presentation/partner/partner_screen.dart';
import 'package:travel_app/presentation/plan/plan_screen.dart';
import 'package:travel_app/presentation/places_information/places_information_screen.dart';
import 'package:travel_app/presentation/profile/profile_screen.dart';
import 'package:travel_app/presentation/travel_info/travel_info_screen.dart';
import 'package:travel_app/presentation/weather/weather_screen.dart';
import 'package:travel_app/presentation/welcome_screen/welcome_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: WelcomeRoute.page,
        ),
        AutoRoute(
          path: '/auth',
          page: AuthRoute.page,
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/placesInformationRoute/:hotel/:weather',
          page: PlacesInformationRoute.page,
        ),
        AutoRoute(
          path: '/plan',
          page: PlanRoute.page,
        ),
        AutoRoute(
          path: '/plan',
          page: WeatherRoute.page,
        ),
        AutoRoute(
          path: '/specificItinerary',
          page: SpecificItineraryRoute.page,
        ),
        AutoRoute(
          path: '/calenderSchedule',
          page: CalenderScheduleRoute.page,
        ),
        AutoRoute(
          path: '/arrangement',
          page: ArrangementRoute.page,
        ),
        AutoRoute(
          path: '/partner',
          page: PartnerRoute.page,
        ),
        AutoRoute(
          path: '/profile',
          page: ProfileRoute.page,
        ),
        AutoRoute(
          path: '/editProfile',
          page: EditProfileRoute.page,
        ),
      ];
}
