import 'package:circle/core/network/network_info.dart';
import 'package:circle/data/datasources/user_remote_data_source.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final NetworkInfo networkInfo;
  final UserRemoteDataSource remoteDataSource;

  const UserRepositoryImpl(this.networkInfo, this.remoteDataSource);
  @override
  Future<Either<Failure, List<AppUser>>> getAllUsersExceptMe() async {
    if (await networkInfo.isConnected) {
      try {
        final userList = await remoteDataSource.getAllUsersExceptMe();
        return right(userList);
      } on Exception catch (_) {
        return left(const Failure.serverError());
      }
    } else {
      return left(const Failure.noInternetConnection());
    }
  }
}
