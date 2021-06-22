import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/message.dart';
import 'package:circle/domain/usecases/get_message_stream.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

@injectable
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final GetMessageStream _getMessageStream;
  MessageBloc(this._getMessageStream) : super(const MessageState.initial());

  late StreamSubscription _messageSubscription;

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    yield* event.map(
      watchAllMessages: (e) async* {
        yield const MessageState.loading();
        final messageEither = _getMessageStream(MessageStreamParam(e.id));
        _messageSubscription = messageEither.listen(
          (failureOrSuccess) => add(
            MessageEvent.messageRecieved(failureOrSuccess: failureOrSuccess),
          ),
        );
      },
      messageRecieved: (e) async* {
        yield e.failureOrSuccess.fold(
          (failure) => MessageState.error(failure: failure),
          (messageList) => MessageState.loaded(messageList: messageList),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _messageSubscription.cancel();
    super.close();
  }
}
