import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageItemWidget extends StatelessWidget {
  final String? message;
  final String? imageUrl;
  final Timestamp time;
  final bool isRecievedMessage;
  const MessageItemWidget({
    Key? key,
    required this.message,
    required this.imageUrl,
    required this.time,
    this.isRecievedMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          isRecievedMessage ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isRecievedMessage
              ? Colors.grey.shade200
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message!,
          style: TextStyle(
            fontSize: 15,
            color: isRecievedMessage ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
