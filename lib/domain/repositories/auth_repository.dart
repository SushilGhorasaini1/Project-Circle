import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository{
  Future<Either<Failure, Unit>> signInWithGoogle();
  Future<Option<AppUser>> getCurrentUser();
  Future<void> signout();
}