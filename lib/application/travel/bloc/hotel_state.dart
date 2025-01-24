part of 'hotel_bloc.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.loading() = _Loading;
  const factory HotelState.loaded(List<Hotel> hotels) = _Loaded;
  const factory HotelState.error(String message) = _Error;
}
