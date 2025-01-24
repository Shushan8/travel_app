import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:travel_app/domain/user/entity/user.dart';
import 'package:travel_app/domain/user/i_user_repository.dart';

class UserRepositoryImpl implements IUserRepository {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  @override
  Future<Either<String, Unit>> createUser() async {
    try {
      final String userId = _auth.currentUser!.uid;
      final String? email = _auth.currentUser!.email;
      await _firestore.collection('users').doc(userId).set(AppUser(
            id: userId,
            email: email.toString(),
            name: '',
            photo: '',
            userName: '',
            phoneNumber: '',
          ).toJson());
      return const Right(unit);
    } catch (e) {
      return const Left('Failure to create user');
    }
  }

  @override
  Future<Either<String, AppUser>> getUser() async {
    try {
      final String userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) {
        return const Left('User not logged in');
      }

      final DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(userId).get();

      if (!userDoc.exists) {
        return const Left('User not found');
      }

      final userData = userDoc.data() as Map<String, dynamic>;
      final user = AppUser.fromJson(userData);

      return Right(user);
    } catch (e) {
      return const Left('Failed to get user data');
    }
  }

  @override
  Future<Either<String, Unit>> editUser(AppUser user) async {
    try {
      final String userId = _auth.currentUser?.uid ?? '';
      if (userId.isEmpty) {
        return const Left('User not logged in');
      }

      await _firestore.collection('users').doc(userId).update(
            user.toJson(),
          );
      return const Right(unit);
    } catch (e) {
      return const Left('Failed to edit user');
    }
  }
}
