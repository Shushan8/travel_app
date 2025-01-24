import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/application/auth/auth_bloc.dart';
import 'package:travel_app/application/travel/bloc/hotel_bloc.dart';
import 'package:travel_app/application/user_create/bloc/user_bloc.dart';
import 'package:travel_app/application/user_get/bloc/user_get_bloc.dart';
import 'package:travel_app/application/weather/bloc/weather_bloc.dart';
import 'package:travel_app/domain/auth/i_auth_repository.dart';
import 'package:travel_app/infrastructure/auth/auth_repository_impl.dart';
import 'package:travel_app/infrastructure/travel/hotel_repository.dart';
import 'package:travel_app/infrastructure/travel/weather_repository.dart';
import 'package:travel_app/infrastructure/user/user_repository.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initializeDependencies() async {
  getIt.init();
  getIt.registerSingleton<IAuthRepository>(
    AuthRepositoryImpl(),
  );
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      getIt<IAuthRepository>(),
    ),
  );
  getIt.registerSingleton<HotelRepositoryImpl>(
    HotelRepositoryImpl(),
  );
  getIt.registerLazySingleton<HotelBloc>(
    () => HotelBloc(
      getIt<HotelRepositoryImpl>(),
    ),
  );
  getIt.registerSingleton<WeatherRepositoryImp>(
    WeatherRepositoryImp(),
  );
  getIt.registerLazySingleton<WeatherBloc>(
    () => WeatherBloc(
      getIt<WeatherRepositoryImp>(),
    ),
  );
  getIt.registerSingleton<UserRepositoryImpl>(
    UserRepositoryImpl(),
  );
  getIt.registerLazySingleton<UserBloc>(
    () => UserBloc(
      getIt<UserRepositoryImpl>(),
    ),
  );

  getIt.registerFactory<UserGetBloc>(
    () => UserGetBloc(
      getIt<UserRepositoryImpl>(),
    ),
  );
}
