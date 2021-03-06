import '../../core/errors/exceptions.dart';
import '../../core/errors/failure.dart';
import '../../core/network/network_info.dart';
import '../datasources/auth_remote_data_source.dart';
import '../../domain/entities/app_user.dart';
import '../../domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final NetworkInfo networkInfo;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.networkInfo, this.remoteDataSource);
  @override
  Future<Either<Failure, Unit>> signInWithGoogle() async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.signInWithGoogle();
        return right(unit);
      } on CancelledByUserException catch (_) {
        return left(const Failure.cancelledByUser());
      } on Exception catch (_) {
        return left(const Failure.serverError());
      }
    } else {
      return left(const Failure.noInternetConnection());
    }
  }

  @override
  Future<Option<AppUser>> getCurrentUser() async {
    final user = await remoteDataSource.getCurrentUser();
    return optionOf(user);
  }

  @override
  Future<void> signout() async {
    await remoteDataSource.signOut();
  }
}
