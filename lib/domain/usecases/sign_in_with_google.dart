import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/repositories/auth_repository.dart';
import 'package:circle/domain/usecases/core/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignInWithGoogle extends Usecase<Unit, NoParam> {
  final AuthRepository repository;

  const SignInWithGoogle(this.repository);
  @override
  Future<Either<Failure, Unit>> call(NoParam param) async {
    return repository.signInWithGoogle();
  }
}
