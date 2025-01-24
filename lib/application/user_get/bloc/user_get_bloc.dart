import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/domain/user/entity/user.dart';
import 'package:travel_app/domain/user/i_user_repository.dart';

part 'user_get_event.dart';
part 'user_get_state.dart';
part 'user_get_bloc.freezed.dart';

class UserGetBloc extends Bloc<UserGetEvent, UserGetState> {
  final IUserRepository repo;
  UserGetBloc(this.repo) : super(_Initial()) {
    on<_GetUser>(getUser);
  }
  Future<void> getUser(_GetUser event, Emitter<UserGetState> emit) async {
    emit(const UserGetState.loading());
    final response = await repo.getUser();
    response.fold(
      (message) => emit(
        UserGetState.failure(message),
      ),
      (user) => emit(
        UserGetState.loaded(user),
      ),
    );
  }
}
