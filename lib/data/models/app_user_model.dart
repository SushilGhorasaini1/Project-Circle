import 'package:circle/domain/entities/app_user.dart';

class AppUserModel extends AppUser {
  final String uid;
  final String name;
  final String email;
  final String imageUrl;

  const AppUserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.imageUrl,
  }) : super(uid: uid, name: name, email: email, imageUrl: imageUrl);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map["uid"] = uid;
    map["name"] = name;
    map["email"] = email;
    map["imageUrl"] = imageUrl;
    return map;
  }
}
