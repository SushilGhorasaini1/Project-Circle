import '../../core/errors/failure.dart';
import '../entities/app_user.dart';
import '../repositories/user_repository.dart';
import 'core/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAllUsersExceptMe extends Usecase<List<AppUser>, NoParam> {
  final UserRepository repository;

  const GetAllUsersExceptMe(this.repository);
  @override
  Future<Either<Failure, List<AppUser>>> call(NoParam param) async {
    return repository.getAllUsersExceptMe();
  }
}
