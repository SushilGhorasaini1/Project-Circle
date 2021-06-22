import 'package:circle/domain/entities/app_user.dart';
import 'package:flutter/material.dart';

class UserProvider extends InheritedWidget {
  final AppUser user;
  const UserProvider({Key? key, 
  required this.user,
  required this.child}) : super(key: key, child: child);

  final Widget child;

  static UserProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserProvider>();
  }

  @override
  bool updateShouldNotify(UserProvider oldWidget) {
    return true;
  }
}
