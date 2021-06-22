import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/errors/failure.dart';

abstract class Usecase<T, Param> {
  const Usecase();
  Future<Either<Failure, T>> call(Param param);
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
