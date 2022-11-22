import 'package:apprentissage/models/UserModel.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> auth(UserModel userModel) async {
    UserCredential userCredential;

    try {
      userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
    } catch (e) {
      userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
    }

    userModel.setUid = userCredential.user!.uid;

    return userModel;
  }
}
