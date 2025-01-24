import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/auth/auth_bloc.dart';
import 'package:travel_app/application/travel/bloc/hotel_bloc.dart';
import 'package:travel_app/application/user_create/bloc/user_bloc.dart';
import 'package:travel_app/application/user_get/bloc/user_get_bloc.dart';
import 'package:travel_app/application/weather/bloc/weather_bloc.dart';
import 'package:travel_app/di/injectable.dart';

import 'app.dart';

class AppGlobalProviders extends StatelessWidget {
  const AppGlobalProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => getIt<AuthBloc>(),
        ),
        BlocProvider<HotelBloc>(
          create: (BuildContext context) => getIt<HotelBloc>(),
        ),
        BlocProvider<WeatherBloc>(
          create: (BuildContext context) => getIt<WeatherBloc>(),
        ),
        BlocProvider<UserBloc>(
          create: (BuildContext context) => getIt<UserBloc>(),
        ),
        BlocProvider<UserGetBloc>(
          create: (BuildContext context) => getIt<UserGetBloc>(),
        ),
      ],
      child: const TravelApp(),
    );
  }
}
