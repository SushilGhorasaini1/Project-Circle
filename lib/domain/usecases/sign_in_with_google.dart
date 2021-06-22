import '../../core/errors/failure.dart';
import '../repositories/auth_repository.dart';
import 'core/usecase.dart';
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
