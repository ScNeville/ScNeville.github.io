import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/cubit/login_cubit.dart';
import '../../bloc/cubit/register_cubit.dart';

class LoginController {
  LoginController._();

  static LoginController get instance => LoginController._();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void signIn(BuildContext context) {
    context
        .read<LoginCubit>()
        .signIn(_emailController.text, _passwordController.text);
  }

  void register(BuildContext context) {
    context
        .read<RegisterCubit>()
        .signUp(_emailController.text, _passwordController.text);
  }
}
