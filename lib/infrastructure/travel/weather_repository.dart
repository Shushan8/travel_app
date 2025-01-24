import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:travel_app/domain/weather/entity/weather_model.dart';
import 'package:travel_app/domain/weather/i_weather_repository.dart';

class WeatherRepositoryImp implements IWeatherRepository {
  @override
  Future<Weather> fetchWeather(String cityName) async {
    final url = Uri.parse(
        'http://api.weatherapi.com/v1/forecast.json?key=4a677d7eca9f4853b4155458251901&q=Prague&days=1&aqi=no&alerts=no');
    log('message');
    final response = await http.get(url);
    log(
      response.statusCode.toString(),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(
        response.body,
      );

      String iconUrl = json['current']['condition']['icon'];
      DateTime date = DateTime.parse(json['location']['localtime']);
      log(response.body.toString());
      return Weather(
        cityName: json['location']['name'],
        temperature: json['current']['temp_c'] ?? '',
        description: '',
        icon: 'https:$iconUrl',
        time: date,
      );
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
