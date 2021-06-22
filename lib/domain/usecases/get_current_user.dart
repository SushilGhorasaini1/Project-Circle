import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/domain/repositories/auth_repository.dart';
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
