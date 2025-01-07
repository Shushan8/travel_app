import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/bloc/auth_bloc.dart';
import 'package:travel_app/di/injectable.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});
  static final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
   child:   MaterialApp.router(
      title: 'Todo App',
      routerConfig: appRouter.config(),
     ) );
  }
}
