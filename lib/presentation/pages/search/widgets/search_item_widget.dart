import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:flutter/material.dart';

class SearchItemWidget extends StatelessWidget {
  final AppUser user;
  const SearchItemWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/chat", arguments: user);
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey.shade300,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: user.imageUrl,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    user.email,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
