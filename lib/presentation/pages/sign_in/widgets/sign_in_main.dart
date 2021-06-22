import 'package:circle/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:circle/presentation/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:circle/presentation/pages/sign_in/widgets/sign_in_body.dart';
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
