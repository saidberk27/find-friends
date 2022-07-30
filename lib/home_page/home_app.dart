import 'package:flutter/material.dart';
import 'package:find_firends/strings.dart';
import 'bottom_nav_menu.dart';
import 'page_view.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => HomeAppState();
}

class HomeAppState extends State<HomeApp> {
  static final GlobalKey<CustomPageViewState> pageViewKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customDrawer(),
      appBar: customAppBar(),
      bottomNavigationBar: BottomNavMenu(),
      body: CustomPageView(key: pageViewKey),
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
