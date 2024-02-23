import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:flutter_application_1/utils/theme/custom_themes/text_theme.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1E1E1),
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
              height: 92,
              width: 320,
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: const Text("ต.เขาเจ็ดลูก, อ.ทับคล้อ, พิจิตร,ประเทศไทย")),
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
              height: 400,
              width: 320,
              child: Column(
                children: [
                  Container(
                    // color: Colors.amber.shade200,
                    margin: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("คุณภาพดี"),
                        Text("ชุมชน1"),
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.amber.shade100,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 290,
                        width: 290,
                        child: SvgPicture.asset(
                            'assets/images/undraw_hiking_re_k0bc.svg')),
                  ),
                  Container(
                    // color: Colors.amber,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: const Row(children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.thermostat_auto,
                              color: Color(0xFF3559E0),
                            ),
                            Text(
                              "32C°",
                              style: TextStyle(color: Color(0xFF3559E0)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.water_drop,
                              color: Color(0xFF3559E0),
                            ),
                            Text(
                              "50%",
                              style: TextStyle(color: Color(0xFF3559E0)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                        height: 30,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              Icons.headset,
                              color: Color(0xFF3559E0),
                            ),
                            Text(
                              "12 μg/m³",
                              style: TextStyle(color: Color(0xFF3559E0)),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
                height: 126,
                width: 320,
                margin: const EdgeInsets.all(10),
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
                child: Row(
                  children: [
                    const Column(children: [
                      Text("ระดับคุณภาพดี"),
                      Text("ระดับคุณภาพดี"),
                      Text("ระดับคุณภาพดี"),
                    ]),
                    Column(
                      children: [
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                                'assets/images/leav.png')),
                      ],
                    ),
                  ],
                )),
            Container(
              height: 60,
              width: 320,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(20)),
              child: const GNav(
                  padding: EdgeInsets.all(10),
                  activeColor: Colors.white,
                  tabBackgroundColor: Color(0xFF3559E0),
                  iconSize: 20,
                  gap: 5,
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: "Home",
                    ),
                    GButton(
                      icon: Icons.location_on,
                      text: "Locations",
                    ),
                    GButton(
                      icon: Icons.history,
                      text: "History",
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: "Setting",
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
