import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:travel_app/domain/i_auth_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<String, Unit>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      String errorMsg;
      if (e.code == "weak-password") {
        errorMsg = 'Password is too weak';
      } else if (e.code == "email-already-in-use") {
        errorMsg = 'Email already in use';
      } else {
        errorMsg = e.code;
      }
      return Left(errorMsg);
    } catch (e) {
      return const Left('Failed to sign up');
    }
  }

  @override
  Future<Either<String, Unit>> login(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Right(unit);
    } catch (e) {
      return Left(e.toString());
    }
  }
  
  
  @override
  Future<Either<String, Unit>> signUpWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(
          'Sign in with google is failure',
        );
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(
        credential,
      );
      return const Right(unit);
    } catch (e) {
      return Left('Error: $e');
    }
  }

}