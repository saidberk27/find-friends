import 'package:flutter/material.dart';
import 'home_screen.dart';

class CustomPageView extends StatefulWidget {
  CustomPageView({Key? key}) : super(key: key);

  @override
  State<CustomPageView> createState() => CustomPageViewState();
}

class CustomPageViewState extends State<CustomPageView> {
  final PageController controller = PageController();

  void communicateBottomNavAndPageView(index) {
    setState(() {
      controller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller,
      children: <Widget>[
        HomeScreen(),
        Center(
          child: Text('Keşfet'),
        ),
        Center(
          child: Text('Oluştur'),
        ),
        Center(
          child: Text('Harita'),
        ),
        Center(
          child: Text('Takvim'),
        )
      ],
    );
  }
}
