import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_app/login/login/bloc/login_bloc.dart';
import 'package:bloc_app/login/login/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create:
              (context) => LoginBloc(
                authenticationRepository:
                    context.read<AuthenticationRepository>(),
              ),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
