import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/message.dart';
import 'package:dartz/dartz.dart';

abstract class ChatRepository {
  Future<Either<Failure, Unit>> sendMessage({
    required String id,
    required String message,
  });
  Future<Either<Failure, Unit>> sendPhoto({
    required String id,
    required String imageUrl,
  });
  Stream<Either<Failure, List<Message>>> getMessageStream({required String id});
}
