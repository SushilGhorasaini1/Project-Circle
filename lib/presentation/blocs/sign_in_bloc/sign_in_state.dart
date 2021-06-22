part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.submitting() = _Submitting;
  const factory SignInState.signedIn() = _SignedIn;
  const factory SignInState.error({required Failure failure}) = _Error;
}
