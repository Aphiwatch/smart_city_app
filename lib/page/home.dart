import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(tabs: [
        GButton(icon: Icons.home,
        text: 'Home',),
        GButton(icon: Icons.map,
        text: 'Maps',),
        GButton(icon: Icons.history),
        GButton(icon: Icons.settings)
      ],),
    );
  }
}