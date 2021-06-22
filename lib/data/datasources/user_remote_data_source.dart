import '../models/app_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDataSource {
  Future<List<AppUserModel>> getAllUsersExceptMe();
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseFirestore firestore;
  final FirebaseAuth firebaseAuth;

  const UserRemoteDataSourceImpl(this.firestore, this.firebaseAuth);
  @override
  Future<List<AppUserModel>> getAllUsersExceptMe() async {
    final currentUser = firebaseAuth.currentUser;
    final result = await firestore
        .collection("users")
        .where("email", isNotEqualTo: currentUser!.email)
        .get();
    final queryList = result.docs;
    final userList = queryList
        .map((userMap) => AppUserModel.fromMap(userMap.data()))
        .toList();
    return userList;
  }
}
