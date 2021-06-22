import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String id;
  final String senderId;
  final String receiverId;
  final String? message;
  final Timestamp timestamp;
  final String? photoUrl;

  const Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    this.message,
    required this.timestamp,
    this.photoUrl,
  });

  @override
  List<Object?> get props => [senderId, message];
}
