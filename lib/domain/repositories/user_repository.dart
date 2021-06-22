import '../../core/errors/failure.dart';
import '../entities/app_user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, List<AppUser>>> getAllUsersExceptMe();
}
