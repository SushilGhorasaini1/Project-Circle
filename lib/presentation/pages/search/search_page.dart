import 'package:circle/injection.dart';
import 'package:circle/presentation/blocs/search_bloc/search_bloc.dart';
import 'package:circle/presentation/pages/search/widgets/search_app_bar.dart';
import 'package:circle/presentation/pages/search/widgets/search_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late SearchBloc _searchBloc;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _searchBloc = getIt<SearchBloc>();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _searchBloc.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _searchBloc,
      child: Scaffold(
        appBar: SearchAppBar(controller: _controller),
        body: const SearchMain(),
      ),
    );
  }
}
