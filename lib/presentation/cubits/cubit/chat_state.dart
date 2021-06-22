part of 'chat_cubit.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.toggleButton() = _ToggleButton;
}
