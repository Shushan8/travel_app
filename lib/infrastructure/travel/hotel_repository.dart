import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_app/domain/travel/entity/hotel_model.dart';
import 'package:travel_app/domain/travel/i_hotel_repository.dart';

class HotelRepositoryImpl implements IHotelRepository {
  @override
  Future<List<Hotel>> fetchHotels(String cityCode) async {
    final Uri url = Uri.parse(
        "https://hotels-com-provider.p.rapidapi.com/v2/regions?query=Prag&domain=AR&locale=es_AR");
    const String apiKey = "2913092f69mshf8186762913fdb0p1d3ebfjsn7a47f3502642";

    final response = await http.get(
      url,
      headers: {
        "X-RapidAPI-Key": apiKey,
        "X-RapidAPI-Host": "hotels-com-provider.p.rapidapi.com",
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final hotels = (data['data'] as List).map(
        (item) {
          cityCode = item['regionNames']['primaryDisplayName'] ?? 'No name';

          return Hotel(
            id: '',
            name: cityCode,
            shortName: '',
            address: item['regionNames']['fullName'] ?? 'No address',
            description:
                'Located at latitude ${item['coordinates']['lat']} and longitude ${item['coordinates']['long']}',
            imageUrl:
                'https://www.shutterstock.com/image-photo/prague-czechia-april-06-2024-600nw-2556027271.jpg',
            stars: item['numericRating'] as int? ?? 4,
            price: 300,
          );
        },
      ).toList();
      return hotels;
    } else {
      throw Exception("Ошибка получения токена");
    }
  }
}
