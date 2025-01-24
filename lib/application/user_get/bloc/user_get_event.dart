part of 'user_get_bloc.dart';

@freezed
class UserGetEvent with _$UserGetEvent {
  const factory UserGetEvent.getUser() = _GetUser;
}
