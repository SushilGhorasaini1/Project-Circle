import 'package:circle/data/models/message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

abstract class ChatRemoteDataSource {
  Future<void> sendMessage({
    required String id,
    String? message,
    String? imageUrl,
  });
  Stream<List<MessageModel>> messageStream({required String id});
}

@LazySingleton(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final FirebaseFirestore firestore;
  final FirebaseAuth firebaseAuth;

  const ChatRemoteDataSourceImpl(this.firestore, this.firebaseAuth);
  @override
  Stream<List<MessageModel>> messageStream({required String id}) async* {
    final currentUser = firebaseAuth.currentUser;
    final documentSnapshot = firestore
        .collection("messages")
        .doc(currentUser!.uid)
        .collection(id)
        .orderBy("timestamp", descending: true)
        .snapshots();
    yield* documentSnapshot.map(
      (snapshot) =>
          snapshot.docs.map((doc) => MessageModel.fromMap(doc.data())).toList(),
    );
  }

  @override
  Future<void> sendMessage({
    required String id,
    String? message,
    String? imageUrl,
  }) async {
    final currentUser = firebaseAuth.currentUser;
    final uuid = const Uuid().v4();
    final messageItem = MessageModel(
      id: uuid,
      senderId: currentUser!.uid,
      receiverId: id,
      timestamp: Timestamp.now(),
      message: message ?? "",
      photoUrl: imageUrl ?? "",
    );
    await firestore
        .collection("messages")
        .doc(currentUser.uid)
        .collection(id)
        .doc(uuid)
        .set(messageItem.toMap());
    await firestore
        .collection("messages")
        .doc(id)
        .collection(currentUser.uid)
        .doc(uuid)
        .set(messageItem.toMap());
  }
}
