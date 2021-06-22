import 'package:circle/presentation/cubits/cubit/chat_cubit.dart';
import 'package:circle/presentation/pages/chat/widgets/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'media_button.dart';
import 'more_button.dart';

class MessageBoxWidget extends StatefulWidget {
  @override
  _MessageBoxWidgetState createState() => _MessageBoxWidgetState();
}

class _MessageBoxWidgetState extends State<MessageBoxWidget> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AnimatedSwitcher(
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  duration: const Duration(milliseconds: 150),
                  child: state.maybeMap(
                    toggleButton: (_) => const MoreButtons(),
                    orElse: () => MediaButtons(),
                  ),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            enabled: true,
                            onTap: () {},
                            onChanged: (val) {
                              BlocProvider.of<ChatCubit>(context)
                                  .messageStringChanged(messageStr: val);
                            },
                            minLines: 1,
                            maxLines: 3,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 10,
                              ),
                              border: InputBorder.none,
                              hintText: "Type a message",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ),
                        AnimatedSwitcher(
                          switchInCurve: Curves.easeIn,
                          switchOutCurve: Curves.easeOut,
                          duration: const Duration(milliseconds: 150),
                          child: state.maybeMap(
                            toggleButton: (_) => GestureDetector(
                              onTap: () {
                                final userId =
                                    UserProvider.of(context)!.user.uid;
                                BlocProvider.of<ChatCubit>(context).sendMessage(
                                  message: _controller.text,
                                  id: userId,
                                );
                                _controller.clear();
                                BlocProvider.of<ChatCubit>(context)
                                    .messageStringChanged(messageStr: "");
                              },
                              child: Icon(
                                FeatherIcons.send,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            orElse: () => const SizedBox.shrink(),
                          ),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return ScaleTransition(
                              scale: animation,
                              child: child,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
