import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/domain/weather/entity/weather_model.dart';
import 'package:travel_app/infrastructure/travel/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepositoryImp weatherRepository;

  WeatherBloc(this.weatherRepository)
      : super(
          const WeatherState.initial(),
        ) {
    on<FetchWeather>(_onFetchWeather);

    add(
      const WeatherEvent.fetchWeather('Prague'),
    );
  }

  Future<void> _onFetchWeather(
    FetchWeather event,
    Emitter<WeatherState> emit,
  ) async {
    emit(
      const WeatherState.loading(),
    );
    try {
      final weather = await weatherRepository.fetchWeather(
        event.cityName,
      );
      emit(
        WeatherState.loaded(weather),
      );
    } catch (e) {
      emit(
        WeatherState.error(
          'Failed to fetch weather: ${e.toString()}',
        ),
      );
    }
  }
}
