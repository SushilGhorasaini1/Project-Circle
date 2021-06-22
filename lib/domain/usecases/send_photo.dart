import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/repositories/chat_repository.dart';
import 'package:circle/domain/usecases/core/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class SendPhoto extends Usecase<Unit, PhotoParam> {
  final ChatRepository repository;

  const SendPhoto(this.repository);
  @override
  Future<Either<Failure, Unit>> call(PhotoParam param) async {
    return repository.sendPhoto(id: param.id, imageUrl: param.imageUrl);
  }
}

class PhotoParam extends Equatable {
  final String imageUrl;
  final String id;

  const PhotoParam({
    required this.imageUrl,
    required this.id,
  });
  @override
  List<Object?> get props => [id, imageUrl];
}
