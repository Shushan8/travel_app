import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});
  static final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todo App',
      routerConfig: appRouter.config(),
    );
  }
}
