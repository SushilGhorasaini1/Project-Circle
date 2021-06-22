import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SaerchItemWidget extends StatelessWidget {
  final String id;
  final String name;
  final String email;
  final String imageUrl;
  const SaerchItemWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.email,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                  imageUrl: imageUrl,
                ),
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 3),
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
      ),
    );
  }
}
