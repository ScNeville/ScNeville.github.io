import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/cubit/register_cubit.dart';
import '../../repositories/firebase_auth.dart';

import '../../utils/dimension_helper.dart';
import '../../widgets/login_form.dart';

import '../../widgets/wave_shape.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          FirebaseAuthentication().sendEmailVerification();
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                      title:
                          const Text("Check your email to verify your account"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("OK")),
                      ]));
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: getScreenHeight(context) * 0.48,
              width: getScreenWidth(context),
              child: Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/coffee.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  child: CustomWaveShape(
                    waveColor: Color.fromRGBO(66, 48, 41, 1),
                    waveStrokeWidth: 0,
                    waveHeight: 0.65,
                  ),
                )
              ]),
            ),
            const Expanded(
              child: LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}
