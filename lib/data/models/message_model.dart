import 'package:circle/domain/entities/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel extends Message {
  final String id;
  final String senderId;
  final String receiverId;
  final String? message;
  final Timestamp timestamp;
  final String? photoUrl;

  const MessageModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    this.message,
    required this.timestamp,
    this.photoUrl,
  }) : super(
          id: id,
          senderId: senderId,
          receiverId: receiverId,
          timestamp: timestamp,
          message: message,
          photoUrl: photoUrl,
        );

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['senderId'] = senderId;
    map['receiverId'] = receiverId;
    map['message'] = message;
    map['timestamp'] = timestamp;
    return map;
  }

  // named constructor
  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      id: map["id"].toString(),
      senderId: map['senderId'].toString(),
      receiverId: map['receiverId'].toString(),
      message: map['message'].toString(),
      timestamp: map['timestamp'] as Timestamp,
      photoUrl: map['photoUrl'].toString(),
    );
  }
}
