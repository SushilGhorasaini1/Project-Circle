import 'package:circle/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:circle/presentation/blocs/message_bloc/message_bloc.dart';
import 'package:circle/presentation/pages/chat/widgets/message_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageListWidget extends StatelessWidget {
  const MessageListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<AuthBloc>(context);
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          loaded: (state) => ListView.builder(
            reverse: true,
            padding: const EdgeInsets.all(10),
            itemCount: state.messageList.length,
            itemBuilder: (context, index) {
              final item = state.messageList[index];
              final currentUserId = bloc.state.maybeWhen(
                  authenticated: (user) => user.uid, orElse: () => "");
              return MessageItemWidget(
                message: item.message,
                imageUrl: item.photoUrl,
                time: item.timestamp,
                isRecievedMessage: item.senderId != currentUserId,
              );
            },
          ),
        );
      },
    );
  }
}
