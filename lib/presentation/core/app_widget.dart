import '../../injection.dart';
import '../blocs/auth_bloc/auth_bloc.dart';
import '../router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Circle",
        onGenerateRoute: AppRouter.generateRoutes,
      ),
    );
  }
}
