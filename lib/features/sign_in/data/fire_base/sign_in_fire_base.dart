import 'package:e_commerce/features/sign_in/data/model/user_dto.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInFireBase {
  Future signIn(UserDto user) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: user.email!,
            password: user.password!,
          );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
