import 'package:fpdart/fpdart.dart';
import 'package:travel_app/domain/user/entity/user.dart';

abstract interface class IUserRepository {
  Future<Either<String, void>> createUser();

  Future<Either<String, AppUser>> getUser();

  Future<Either<String, Unit>> editUser(AppUser user);
}
