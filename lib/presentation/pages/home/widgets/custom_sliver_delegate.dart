import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:circle/presentation/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get maxExtent => kToolbarHeight + 90;

  @override
  double get minExtent => kToolbarHeight + 35;

  @override
  bool shouldRebuild(_) => true;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final value = shrinkOffset / maxExtent;
    const Duration duration = Duration(milliseconds: 50);
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: duration,
            left: 0,
            right: 0,
            top: 5,
            child: Transform.scale(
              scale: 1 - value,
              child: AnimatedOpacity(
                opacity: 1 - value,
                duration: duration,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(const AuthEvent.signedOut());
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade200,
                            child: ClipOval(
                              child: CachedNetworkImage(
                                imageUrl: BlocProvider.of<AuthBloc>(context)
                                    .state
                                    .maybeWhen(
                                      authenticated: (user) => user.imageUrl,
                                      orElse: () => "",
                                    ),
                              ),
                            ),
                          ),
                        ),
                        const LogoWidget(height: 35),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade200,
                          child: const Icon(
                            FeatherIcons.edit,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/search");
              },
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(
                      FeatherIcons.search,
                      color: Colors.grey.shade500,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Searching for friends?",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
