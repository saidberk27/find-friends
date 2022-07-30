import 'package:flutter/material.dart';
import 'home_page/home_app.dart';
import 'colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Find Friends';

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            bottomAppBarColor: ProjeRenkleri.birinciRenk,
            primaryColor: ProjeRenkleri.birinciRenk,
            iconTheme: IconThemeData(color: ProjeRenkleri.birinciRenk),
            appBarTheme: customAppBarTheme(context)),
        debugShowCheckedModeBanner: false,
        home: const HomeApp());
  }

  AppBarTheme customAppBarTheme(BuildContext context) {
    return AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: ProjeRenkleri.birinciRenk),
        titleTextStyle: Theme.of(context).textTheme.headline4!.copyWith(
            color: ProjeRenkleri.birinciRenk, fontWeight: FontWeight.bold));
  }
}
