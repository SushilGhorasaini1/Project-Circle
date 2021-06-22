import '../../core/errors/exceptions.dart';
import '../models/app_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../core/firebase_user_mapper.dart';
import '../core/firestore_helper.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<User> signInWithGoogle();
  Future<AppUserModel?> getCurrentUser();
  Future<void> signOut();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FirebaseFirestore firestore;

  const AuthRemoteDataSourceImpl(
    this.firebaseAuth,
    this.googleSignIn,
    this.firestore,
  );
  @override
  Future<User> signInWithGoogle() async {
    final googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount == null) {
      throw CancelledByUserException();
    }
    final googleAuthentication = await googleSignInAccount.authentication;
    final authCredential = GoogleAuthProvider.credential(
      accessToken: googleAuthentication.accessToken,
      idToken: googleAuthentication.idToken,
    );
    final firebaseUser =
        await firebaseAuth.signInWithCredential(authCredential);
    final user = firebaseUser.user!.toDomain();
    final result = await firestore
        .collection("users")
        .where("email", isEqualTo: user.email)
        .get();
    final isAuthenticated = result.docs.isNotEmpty;
    if (!isAuthenticated) {
      final userDoc = await firestore.userDocument();
      await userDoc.set(user.toMap());
    }
    return firebaseUser.user!;
  }

  @override
  Future<AppUserModel?> getCurrentUser() async {
    if (firebaseAuth.currentUser != null) {
      return firebaseAuth.currentUser!.toDomain();
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        googleSignIn.signOut(),
        firebaseAuth.signOut(),
      ]);
}
