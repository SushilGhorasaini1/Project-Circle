import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/injection.dart';
import 'package:circle/presentation/blocs/message_bloc/message_bloc.dart';
import 'package:circle/presentation/cubits/cubit/chat_cubit.dart';
import 'package:circle/presentation/pages/chat/widgets/chat_app_bar.dart';
import 'package:circle/presentation/pages/chat/widgets/chat_body.dart';
import 'package:circle/presentation/pages/chat/widgets/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatefulWidget {
  final AppUser user;
  const ChatPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late MessageBloc _messageBloc;
  late ChatCubit _chatCubit;

  @override
  void initState() {
    _messageBloc = getIt<MessageBloc>();
    _chatCubit = getIt<ChatCubit>();
    _messageBloc.add(MessageEvent.watchAllMessages(id: widget.user.uid));
    super.initState();
  }

  @override
  void dispose() {
    _messageBloc.close();
    _chatCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(
        name: widget.user.name,
        email: widget.user.email,
        imageUrl: widget.user.imageUrl,
      ),
      body: UserProvider(
        user: widget.user,
        child: MultiBlocProvider(
          providers: [
            BlocProvider<MessageBloc>(
              create: (context) => _messageBloc,
            ),
            BlocProvider<ChatCubit>(
              create: (context) => _chatCubit,
            ),
          ],
          child: const ChatBody(),
        ),
      ),
    );
  }
}
