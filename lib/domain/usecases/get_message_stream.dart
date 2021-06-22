import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/message.dart';
import 'package:circle/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class GetMessageStream {
  final ChatRepository repository;

  const GetMessageStream(this.repository);
  Stream<Either<Failure, List<Message>>> call(
    MessageStreamParam param,
  ) async* {
    yield* repository.getMessageStream(id: param.id);
  }
}

class MessageStreamParam extends Equatable {
  final String id;

  const MessageStreamParam(this.id);

  @override
  List<Object?> get props => [id];
}
