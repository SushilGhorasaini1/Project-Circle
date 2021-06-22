import 'package:circle/presentation/blocs/search_bloc/search_bloc.dart';
import 'package:circle/presentation/pages/search/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchMain extends StatelessWidget {
  const SearchMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.maybeMap(
          searching: (_) => const Center(child: CircularProgressIndicator()),
          searchCompleted: (state) => SearchBody(userList: state.userList),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
