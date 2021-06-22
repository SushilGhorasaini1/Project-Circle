import '../../../blocs/auth_bloc/auth_bloc.dart';
import '../../../blocs/sign_in_bloc/sign_in_bloc.dart';
import 'sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInMain extends StatelessWidget {
  const SignInMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        state.maybeMap(
          signedIn: (_) {
            BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.authCheckRequested());
            Navigator.pushNamedAndRemoveUntil(
                context, "/home", (route) => false);
          },
          orElse: () {},
        );
      },
      child: const SignInBody(),
    );
  }
}
