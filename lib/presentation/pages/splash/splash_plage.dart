import 'package:circle/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:circle/presentation/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            unauthenticated: (_) {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/sign-in", (route) => false);
            },
            authenticated: (_) {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/home", (route) => false);
            },
          );
        },
        child: const Center(
          child: LogoWidget(height: 75),
        ),
      ),
    );
  }
}
