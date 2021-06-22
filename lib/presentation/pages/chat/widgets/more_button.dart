import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class MoreButtons extends StatelessWidget {
  const MoreButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            child: Icon(
              FeatherIcons.chevronLeft,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            child: Icon(
              FeatherIcons.user,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
