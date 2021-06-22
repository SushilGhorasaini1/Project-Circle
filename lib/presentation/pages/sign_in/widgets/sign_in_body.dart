import 'google_sign_in_button.dart';
import '../../../widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoWidget(height: 60),
                const SizedBox(height: 10),
                const Text(
                  "Welcome to Circle Messaging",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "Sign in with Google to get started.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          const GoogleSignInButton(),
        ],
      ),
    );
  }
}
