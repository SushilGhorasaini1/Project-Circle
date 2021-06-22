import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ChatAppBar extends StatelessWidget with PreferredSizeWidget {
  final String imageUrl;
  final String name;
  final String email;
  const ChatAppBar({
    Key? key,
    required this.name,
    required this.email,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      titleSpacing: 0.0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              FeatherIcons.chevronLeft,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
          CircleAvatar(
            radius: 18,
            child: ClipOval(
              child: CachedNetworkImage(imageUrl: imageUrl),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  email,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
