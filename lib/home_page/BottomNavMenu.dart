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
    return Theme(
      data: ThemeData(splashColor: ProjeRenkleri.besinciRenk),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedIconTheme: Theme.of(context).iconTheme,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ProjeRenkleri.birinciRenk,
        selectedItemColor:
            ProjeRenkleri.besinciRenk, //LABEL RENGI DEGISIR.ICON DEGISMEZ
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedFontSize: 14,
        items: [
          IconBottomNavBarItem(
              selectedIcon: Icons.home, labelData: "ANA SAYFA"),
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
      ),
    );
  }

  BottomNavigationBarItem IconBottomNavBarItem(
      {required IconData selectedIcon, required String labelData}) {
    return BottomNavigationBarItem(
        icon: Icon(selectedIcon, color: Colors.white),
        activeIcon: Icon(selectedIcon,
            color: ProjeRenkleri
                .besinciRenk), //ICON RENGI DEGISTIR.LABEL DEGISMEZ.
        label: labelData);
  }

  BottomNavigationBarItem ImageBottomNavBarItem(
      {required String path, required String labelData}) {
    return BottomNavigationBarItem(
        icon: Image.asset(path, color: Colors.white, scale: 3.5),
        activeIcon: Image.asset(path,
            color: ProjeRenkleri.besinciRenk,
            scale: 3), //ICON RENGI DEGISTIR.LABEL DEGISMEZ.
        label: labelData);
  }
}
