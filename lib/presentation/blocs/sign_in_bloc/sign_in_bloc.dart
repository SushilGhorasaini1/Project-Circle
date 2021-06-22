import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../core/errors/failure.dart';
import '../../../domain/usecases/sign_in_with_google.dart';
import '../../../domain/usecases/core/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInWithGoogle _signInWithGoogle;
  SignInBloc(this._signInWithGoogle) : super(const SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(signInWithGooglePressed: (e) async* {
      yield const SignInState.submitting();
      final failureOrSuccess = await _signInWithGoogle(NoParam());
      yield failureOrSuccess.fold(
        (failure) => SignInState.error(failure: failure),
        (_) => const SignInState.signedIn(),
      );
    });
  }
}
