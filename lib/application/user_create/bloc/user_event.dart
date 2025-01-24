part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.createUser() = _CreateUser;

  const factory UserEvent.editUser(AppUser user) = _EditUser;
}
