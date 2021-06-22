import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, List<AppUser>>> getAllUsersExceptMe();
}
