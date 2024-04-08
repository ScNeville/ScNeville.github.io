import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class UserProvider {
  User? _user;
  UserProvider._();

  static final UserProvider instance = UserProvider._();

  void setUser(User user) {
    log("User: ${user.email}");
    _user ??= user;
  }

  void clearUser() {
    log("User: null");
    _user = null;
  }

  String getUserId() {
    return _user!.uid;
  }

  String getUserEmail() {
    return _user!.email!;
  }

  String getUserName() {
    return _user!.displayName!;
  }

  String getUserPhotoUrl() {
    return _user!.photoURL!;
  }
}
