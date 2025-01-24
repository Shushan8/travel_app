part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = Initial;
  const factory WeatherState.loading() = Loading;
  const factory WeatherState.loaded(Weather weather) = Loaded;
  const factory WeatherState.error(String message) = Error;
}
