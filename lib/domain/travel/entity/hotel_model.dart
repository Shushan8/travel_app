import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class Hotel with _$Hotel {
  factory Hotel({
    required String id,
    required String name,
    required String address,
    required String description,
    required String shortName,
    required String imageUrl,
    required int stars,
    required double price,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
