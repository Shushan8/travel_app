import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/domain/travel/entity/hotel_model.dart';
import 'package:travel_app/infrastructure/travel/hotel_repository.dart';
part 'hotel_event.dart';
part 'hotel_state.dart';
part 'hotel_bloc.freezed.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final HotelRepositoryImpl repository;

  HotelBloc(this.repository) : super(HotelState.loading()) {
    on<HotelEvent>(
      (event, emit) async {
        await event.when(
          fetchHotels: (cityCode) async {
            emit(const HotelState.loading());
            try {
              final hotels = await repository.fetchHotels(cityCode);
              emit(
                HotelState.loaded(hotels),
              );
            } catch (e) {
              emit(
                HotelState.error(
                  e.toString(),
                ),
              );
            }
          },
        );
      },
    );
  }
}
