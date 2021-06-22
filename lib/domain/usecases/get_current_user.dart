import '../entities/app_user.dart';
import '../repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCurrentUser{
  final AuthRepository repository;

  const GetCurrentUser(this.repository);
  Future<Option<AppUser>> call() async {
    return repository.getCurrentUser();
  }
}
