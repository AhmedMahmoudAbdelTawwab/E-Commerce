// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/neywork/fire_base_result.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:e_commerce/features/auth/data/model/user_dto.dart';

class AuthFireBase {
  AuthFireBase();
  Future<FireBaseResult<UserDto>> regstier({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return SuccessFireBase<UserDto>(
        UserDto(email: credential.user!.email, uid: credential.user!.uid),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return ErorrFireBase<UserDto>('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return ErorrFireBase<UserDto>(
          "The account already exists for that email.",
        );
      }
    } catch (e) {
      return ErorrFireBase<UserDto>(e.toString());
    }
    return ErorrFireBase<UserDto>("Unknown error occurred.");
  }

  Future<FireBaseResult<bool>> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return SuccessFireBase<bool>(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return ErorrFireBase<bool>('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return ErorrFireBase<bool>('Wrong password provided for that user.');
      }
    } catch (e) {
      return ErorrFireBase<bool>(e.toString());
    }
    return ErorrFireBase<bool>("Unknown error occurred.");
  }
}
