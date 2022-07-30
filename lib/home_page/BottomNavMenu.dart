import 'package:find_firends/ImagePaths.dart';
import 'package:find_firends/colors.dart';
import 'package:flutter/material.dart';

class BottomNavMenu extends StatefulWidget {
  BottomNavMenu({Key? key}) : super(key: key);

  @override
  State<BottomNavMenu> createState() => _BottomNavMenuState();
}

class _BottomNavMenuState extends State<BottomNavMenu> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedIconTheme: Theme.of(context).iconTheme,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedFontSize: 14,
      items: [
        IconBottomNavBarItem(selectedIcon: Icons.home, labelData: "ANA SAYFA"),
        ImageBottomNavBarItem(path: ImagePaths.pusula, labelData: "KEŞFET"),
        IconBottomNavBarItem(selectedIcon: Icons.add, labelData: "OLUŞTUR"),
        IconBottomNavBarItem(selectedIcon: Icons.map, labelData: "HARİTA"),
        IconBottomNavBarItem(
            selectedIcon: Icons.calendar_month, labelData: "TAKVİM"),
      ],
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem IconBottomNavBarItem(
      {required IconData selectedIcon, required String labelData}) {
    return BottomNavigationBarItem(
        icon: Icon(selectedIcon, color: Colors.black),
        activeIcon: Icon(selectedIcon, color: ProjeRenkleri.birinciRenk),
        label: labelData);
  }

  BottomNavigationBarItem ImageBottomNavBarItem(
      {required String path, required String labelData}) {
    return BottomNavigationBarItem(
        icon: Image.asset(path, color: Colors.black, scale: 3),
        activeIcon:
            Image.asset(path, color: ProjeRenkleri.birinciRenk, scale: 3),
        label: labelData);
  }
}
