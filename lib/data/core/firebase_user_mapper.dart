import 'package:circle/data/models/app_user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUsermapper on User {
  AppUserModel toDomain() {
    final AppUserModel user = AppUserModel(
      uid: uid,
      name: displayName!,
      email: email!,
      imageUrl: photoURL!,
    );
    return user;
  }
}
