// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ArrangementScreen]
class ArrangementRoute extends PageRouteInfo<void> {
  const ArrangementRoute({List<PageRouteInfo>? children})
      : super(
          ArrangementRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArrangementRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArrangementScreen();
    },
  );
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    required bool isFromSignUp,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            isFromSignUp: isFromSignUp,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteArgs>();
      return AuthScreen(
        key: args.key,
        isFromSignUp: args.isFromSignUp,
      );
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    required this.isFromSignUp,
  });

  final Key? key;

  final bool isFromSignUp;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, isFromSignUp: $isFromSignUp}';
  }
}

/// generated route for
/// [CalenderScheduleScreen]
class CalenderScheduleRoute extends PageRouteInfo<void> {
  const CalenderScheduleRoute({List<PageRouteInfo>? children})
      : super(
          CalenderScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalenderScheduleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CalenderScheduleScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [PartnerScreen]
class PartnerRoute extends PageRouteInfo<void> {
  const PartnerRoute({List<PageRouteInfo>? children})
      : super(
          PartnerRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartnerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PartnerScreen();
    },
  );
}

/// generated route for
/// [PlacesInformationScreen]
class PlacesInformationRoute extends PageRouteInfo<void> {
  const PlacesInformationRoute({List<PageRouteInfo>? children})
      : super(
          PlacesInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlacesInformationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PlacesInformationScreen();
    },
  );
}

/// generated route for
/// [PlanScreen]
class PlanRoute extends PageRouteInfo<void> {
  const PlanRoute({List<PageRouteInfo>? children})
      : super(
          PlanRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlanRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PlanScreen();
    },
  );
}

/// generated route for
/// [SpecificItineraryScreen]
class SpecificItineraryRoute extends PageRouteInfo<void> {
  const SpecificItineraryRoute({List<PageRouteInfo>? children})
      : super(
          SpecificItineraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpecificItineraryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpecificItineraryScreen();
    },
  );
}

/// generated route for
/// [WeatherScreen]
class WeatherRoute extends PageRouteInfo<void> {
  const WeatherRoute({List<PageRouteInfo>? children})
      : super(
          WeatherRoute.name,
          initialChildren: children,
        );

  static const String name = 'WeatherRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WeatherScreen();
    },
  );
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomeScreen();
    },
  );
}
