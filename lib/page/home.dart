import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/allcity.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/image_slideshow.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';
// import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 8),
                    )
                  ]),
              height: 100,
              width: 380,
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                          "ต.เขาเจ็ดลูก, อ.ทับคล้อ, พิจิตร,ประเทศไทย")),
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: const Text("22 มิถุนายน 2567")),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 8),
                    )
                  ]),
              margin: const EdgeInsets.all(10),
              height: 450,
              width: 380,
              child: const AllCity(),
            ),
            // const AllCity(),
            const SlideShowWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const GNav(
          // padding: EdgeInsets.all(20),
          activeColor: Color(0xFF3559E0),
          backgroundColor: Colors.white,
          hoverColor: Color(0xFF3559E0),
          iconSize: 30,
          gap: 5,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.location_on,
              text: "Maps",
            ),
            GButton(
              icon: Icons.history,
              text: "History",
            ),
            GButton(
              icon: Icons.settings,
              text: "Setting",
            ),
            // GButton(icon: Icons.menu),
          ]),
    );
  }
}
