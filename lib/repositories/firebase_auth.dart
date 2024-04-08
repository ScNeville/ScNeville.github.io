import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

class FirebaseAuthentication {
  Future<Either<User?, String?>> signIn(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Either.left(credential.user);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          return Either.right("Invalid email");
        case "wrong-password":
          return Either.right("Wrong password");
        case "user-not-found":
          return Either.right("User not found");
        case "user-disabled":
          return Either.right("User disabled");
        default:
          return Either.right("Something went wrong");
      }
    }
  }

  Future<Either<User?, String?>> signUp(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return Either.left(credential.user);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-email":
          return Either.right("Invalid email");
        case "weak-password":
          return Either.right("Weak password");
        case "email-already-in-use":
          return Either.right("Email already in use");
        default:
          return Either.right("Something went wrong");
      }
    }
  }

  void sendEmailVerification() {
    FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  void deleteAccount() {
    FirebaseAuth.instance.currentUser!.delete();
  }

  Future<String> sendPasswordResetEmail(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return "Password reset email sent";
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "user-not-found":
          return "User not found";
        case "invalid-email":
          return "Invalid email";
        default:
          return "Something went wrong";
      }
    }
  }
}
