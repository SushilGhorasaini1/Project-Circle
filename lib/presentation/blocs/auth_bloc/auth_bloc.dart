import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/domain/usecases/sign_out.dart';
import 'package:circle/domain/usecases/get_current_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetCurrentUser getCurrentUser;
  final SignOut signOut;
  AuthBloc(this.getCurrentUser, this.signOut)
      : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await getCurrentUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user: user),
        );
      },
      signedOut: (e) async* {
        await signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
