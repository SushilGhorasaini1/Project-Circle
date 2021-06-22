import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String imageUrl;
  const AppUser({
    required this.uid,
    required this.name,
    required this.email,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [uid, name];

  @override
  bool get stringify => true;
}
