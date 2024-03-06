import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/allcity.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/image_slideshow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  child:
                      const Text("ต.เขาเจ็ดลูก, อ.ทับคล้อ, พิจิตร,ประเทศไทย")),
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

        // GButton(icon: Icons.menu),
      ]),
    ));
  }
}
