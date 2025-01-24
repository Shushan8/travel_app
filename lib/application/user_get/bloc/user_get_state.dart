part of 'user_get_bloc.dart';

@freezed
class UserGetState with _$UserGetState {
  const factory UserGetState.initial() = _Initial;
  const factory UserGetState.loading() = _Loading;
  const factory UserGetState.success() = _Success;
  const factory UserGetState.failure(String message) = _Failure;
  const factory UserGetState.loaded(AppUser user) = _Loaded;
}
