import '../../../../domain/entities/app_user.dart';
import 'search_item_widget.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  final List<AppUser> userList;
  const SearchBody({
    Key? key,
    required this.userList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, index) {
        final item = userList[index];
        return SaerchItemWidget(
          id: item.uid,
          name: item.name,
          email: item.email,
          imageUrl: item.imageUrl,
        );
      },
    );
  }
}
