import 'package:travel_app/domain/travel/entity/hotel_model.dart';

abstract interface class IHotelRepository {
  Future<List<Hotel>> fetchHotels(String cityCode);
}
