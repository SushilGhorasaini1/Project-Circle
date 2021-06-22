import 'package:bloc/bloc.dart';
import 'package:circle/domain/usecases/send_message.dart';
import 'package:circle/domain/usecases/send_photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  final SendMessage _sendMessage;
  final SendPhoto _sendPhoto;
  ChatCubit(
    this._sendMessage,
    this._sendPhoto,
  ) : super(const ChatState.initial());

  void messageStringChanged({required String messageStr}) {
    final filteredString = messageStr.replaceAll(RegExp(r"\s+"), "");
    if (filteredString.isNotEmpty) {
      emit(const ChatState.toggleButton());
    } else {
      if (state == const ChatState.toggleButton()) {
        emit(const ChatState.initial());
      }
    }
  }

  void sendMessage({required String message, required String id}) async {
    final failureOrSuccess = await _sendMessage(
      MessageParam(message: message, id: id),
    );
    failureOrSuccess.fold((_) => {}, (_) => {});
  }

  void sendPhoto({required String imageUrl, required String id}) async {
    final failureOrSuccess = await _sendPhoto(
      PhotoParam(imageUrl: imageUrl, id: id),
    );
    failureOrSuccess.fold((_) => {}, (_) => {});
  }
}
