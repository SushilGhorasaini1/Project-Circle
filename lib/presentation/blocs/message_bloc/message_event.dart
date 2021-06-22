part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.watchAllMessages({required String id}) =
      _WatchAllMessages;
  const factory MessageEvent.messageRecieved(
          {required Either<Failure, List<Message>> failureOrSuccess}) =
      _MessageRecieved;
}
