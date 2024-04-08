import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../repositories/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void signIn(String email, String password) async {
    emit(LoginLoading());
    if (email.isEmpty || password.isEmpty) {
      emit(const LoginFailed(error: "Please fill in all fields"));
    } else {
      final credential = await FirebaseAuthentication().signIn(email, password);
      credential.fold(
          (l) => emit(LoginSuccess()), (r) => emit(LoginFailed(error: r!)));
    }
  }
}
