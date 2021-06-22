import '../../../blocs/search_bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  final TextEditingController controller;

  const SearchAppBar({
    Key? key,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FeatherIcons.chevronLeft,
                size: 30,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.grey.shade200
                      : Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        autofocus: true,
                        controller: controller,
                        onChanged: (query) {
                          BlocProvider.of<SearchBloc>(context)
                              .add(SearchEvent.searchStarted(query: query));
                        },
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade400,
                          ),
                          border: InputBorder.none,
                          isCollapsed: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                        ),
                      ),
                    ),
                    AnimatedBuilder(
                      animation: controller,
                      builder: (BuildContext context, Widget? child) {
                        if (controller.text.isNotEmpty) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<SearchBloc>(context).add(
                                  const SearchEvent.searchStarted(query: ""));
                              WidgetsBinding.instance!.addPostFrameCallback(
                                (_) => controller.clear(),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                FeatherIcons.x,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
