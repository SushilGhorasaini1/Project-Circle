import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/domain/repositories/user_repository.dart';
import 'package:circle/domain/usecases/core/usecase.dart';
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
