part of 'hotel_bloc.dart';

@freezed
class HotelEvent with _$HotelEvent {
  const factory HotelEvent.fetchHotels(String cityCode) = _FetchHotels;
}
