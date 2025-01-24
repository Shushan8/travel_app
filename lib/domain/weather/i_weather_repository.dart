import 'package:travel_app/domain/weather/entity/weather_model.dart';

abstract interface class IWeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}
