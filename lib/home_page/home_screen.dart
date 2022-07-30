import 'package:flutter/material.dart';
import 'package:find_firends/strings.dart';
import 'BottomNavMenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customDrawer(),
      appBar: customAppBar(),
      bottomNavigationBar: BottomNavMenu(),
    );
  }

  Drawer customDrawer() {
    return const Drawer(
      backgroundColor: Colors.white,
    );
  }

  AppBar customAppBar() {
    return AppBar(
      title: const Text(Strings.appTitle),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
          splashRadius: 20,
        )
      ],
    );
  }
}
