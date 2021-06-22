import 'widgets/custom_sliver_delegate.dart';
import 'widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverPersistentHeader(
            delegate: CustomSliverDelegate(),
            pinned: true,
          )
        ],
        body: const HomeBody(),
      ),
    );
  }
}
