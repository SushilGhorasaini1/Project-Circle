import '../../core/errors/failure.dart';
import '../entities/app_user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository{
  Future<Either<Failure, Unit>> signInWithGoogle();
  Future<Option<AppUser>> getCurrentUser();
  Future<void> signout();
}