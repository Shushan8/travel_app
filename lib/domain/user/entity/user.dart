import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class AppUser with _$AppUser {
  factory AppUser({
    required String id,
    required String email,
    required String name,
    required String photo,
    required String userName,
    required String phoneNumber,
  }) = _AppUser;
  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
