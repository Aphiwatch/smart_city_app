import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/static.dart';
import 'package:flutter_application_1/page/home.dart';
import 'package:flutter_application_1/page/maps.dart';
import 'package:flutter_application_1/page/setting.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final controller = PageController();
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MapsScreen(),
    StaticScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        // padding: EdgeInsets.all(20),
        activeColor: const Color(0xFF3559E0),
        backgroundColor: Colors.white,
        hoverColor: const Color(0xFF3559E0),
        iconSize: 30,
        gap: 5,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.location_on,
            text: "Maps",
          ),
          GButton(
            icon: Icons.bar_chart,
            text: "Static",
          ),
          GButton(
            icon: Icons.settings,
            text: "Setting",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
