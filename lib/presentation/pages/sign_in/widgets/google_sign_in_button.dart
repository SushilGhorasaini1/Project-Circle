import '../../../blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        height: 45,
        minWidth: double.maxFinite,
        onPressed: () {
          BlocProvider.of<SignInBloc>(context)
              .add(const SignInEvent.signInWithGooglePressed());
        },
        color: Theme.of(context).primaryColor,
        focusColor: Theme.of(context).splashColor,
        child: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            return state.maybeMap(
              submitting: (_) => const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
              orElse: () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svgs/google.svg",
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "Sign In with Google",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
