import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/domain/user/entity/user.dart';
import 'package:travel_app/domain/user/i_user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  IUserRepository repo;
  UserBloc(this.repo) : super(const _Initial()) {
    on<_CreateUser>(createUser);
    on<_EditUser>(editUser);
  }

  Future<void> createUser(_CreateUser event, Emitter<UserState> emit) async {
    emit(
      const UserState.loading(),
    );
    final response = await repo.createUser();
    response.fold(
      (message) {
        emit(
          UserState.failure(message),
        );
      },
      (_) {
        emit(
          const UserState.success(),
        );
      },
    );
  }

  Future<void> editUser(_EditUser event, Emitter<UserState> emit) async {
    emit(const UserState.loading());

    final response = await repo.editUser(event.user);

    response.fold(
      (message) => emit(
        UserState.failure(message),
      ),
      (_) => emit(
        const UserState.success(),
      ),
    );
  }
}
