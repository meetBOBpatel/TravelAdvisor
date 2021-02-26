import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

String errorMessage;

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);

  // depending on if signed in or signed out, returns user or null
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  // Could add error messages if wrong inputs for fields
  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } catch (e) {
      errorMessage = e.message;
      return e.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message;
      return e.message;
    }
  }
}

class EmailValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Email can't be empty";
    } else if (errorMessage != null) {
      return errorMessage;
    }
    return null;
  }
}

class PasswordValidator {
  static String validate(String value) {
    if (value.isEmpty) {
      return "Password can't be empty";
    } else if (errorMessage != null) {
      return errorMessage;
    }
    return null;
  }
}
