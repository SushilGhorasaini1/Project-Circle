import '../repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignOut{
  final AuthRepository repository;

  const SignOut(this.repository);
  Future<void> call() async {
    return repository.signout();
  }
}
