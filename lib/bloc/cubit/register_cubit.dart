import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../repositories/firebase_auth.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  void signUp(String email, String password) async {
    emit(RegisterLoading());
    if (email.isEmpty || password.isEmpty) {
      emit(const RegisterFailed(error: "Please fill in all fields"));
    } else {
      final credential = await FirebaseAuthentication().signUp(email, password);
      credential.fold((l) => emit(RegisterSuccess()),
          (r) => emit(RegisterFailed(error: r!)));
    }
  }
}
