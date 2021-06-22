import 'package:circle/core/network/network_info.dart';
import 'package:circle/data/datasources/chat_remote_data_source.dart';
import 'package:circle/domain/entities/message.dart';
import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final NetworkInfo networkInfo;
  final ChatRemoteDataSource remoteDataSource;

  const ChatRepositoryImpl(this.networkInfo, this.remoteDataSource);
  @override
  Stream<Either<Failure, List<Message>>> getMessageStream(
      {required String id}) async* {
    yield* remoteDataSource
        .messageStream(id: id)
        .handleError((_) => left(const Failure.serverError()))
        .map((messageList) => right(messageList));
  }

  @override
  Future<Either<Failure, Unit>> sendMessage({
    required String id,
    required String message,
  }) async {
    try {
      await remoteDataSource.sendMessage(id: id, message: message);
      return right(unit);
    } on Exception catch (_) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> sendPhoto(
      {required String id, required String imageUrl}) async{
        try {
      await remoteDataSource.sendMessage(id: id, imageUrl: imageUrl);
      return right(unit);
    } on Exception catch (_) {
      return left(const Failure.serverError());
    }
  }
}
