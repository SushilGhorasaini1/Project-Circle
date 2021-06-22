import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/repositories/chat_repository.dart';
import 'package:circle/domain/usecases/core/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class SendMessage extends Usecase<Unit, MessageParam> {
  final ChatRepository repository;

  const SendMessage(this.repository);
  @override
  Future<Either<Failure, Unit>> call(MessageParam param) async {
    return repository.sendMessage(id: param.id, message: param.message);
  }
}

class MessageParam extends Equatable {
  final String message;
  final String id;

  const MessageParam({
    required this.message,
    required this.id,
  });
  @override
  List<Object?> get props => [id, message];
}
