import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/application/bloc/auth_bloc.dart';
import 'package:travel_app/domain/i_auth_repository.dart';
import 'package:travel_app/infrastructure/auth/auth_repository_impl.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> initializeDependencies() async {
  await getIt.init();

  getIt.registerSingleton<IAuthRepository>(
    AuthRepositoryImpl(),
  );

  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      getIt<IAuthRepository>(),
    ),
  );
}
