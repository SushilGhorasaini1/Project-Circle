import 'package:circle/injection.dart';
import 'package:circle/presentation/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:circle/presentation/pages/sign_in/widgets/sign_in_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late SignInBloc _signInBloc;

  @override
  void initState() {
    _signInBloc = getIt<SignInBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _signInBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _signInBloc,
        child: const SignInMain(),
      ),
    );
  }
}
