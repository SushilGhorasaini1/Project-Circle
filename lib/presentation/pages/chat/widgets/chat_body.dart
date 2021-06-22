import 'package:circle/presentation/pages/chat/widgets/message_box_widget.dart';
import 'package:circle/presentation/pages/chat/widgets/message_list_widget.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: MessageListWidget(),
        ),
        MessageBoxWidget(),
      ],
    );
  }
}
