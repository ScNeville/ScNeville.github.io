import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/p_home.dart';
import '../pages/p_login.dart';
import '../pages/p_settings.dart';
import '../../providers/user_provider.dart';

class AuthenticationGate extends StatelessWidget {
  const AuthenticationGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.active) {
            return const Center(child: CircularProgressIndicator());
          }
          final user = snapshot.data;
          if (user != null && user.emailVerified) {
            UserProvider.instance.setUser(user);
            return const SettingsScreen();
          } else {
            UserProvider.instance.clearUser();
            return const LoginPage();
          }
        });
  }
}
