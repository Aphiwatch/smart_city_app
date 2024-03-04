import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllCity extends StatefulWidget {
  const AllCity({super.key});

  @override
  State<AllCity> createState() => _AllCityState();
}

class _AllCityState extends State<AllCity> {
  // int activeIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber.shade200,
          // margin: const EdgeInsets.all(10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("คุณภาพดี"),
              Text("ชุมชน1"),
            ],
          ),
        ),
        Container(
          color: Colors.amber.shade100,
          // margin: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          child: SizedBox(
              height: 290,
              width: 290,
              child:
                  SvgPicture.asset('assets/images/undraw_hiking_re_k0bc.svg')),
        ),
        Container(
          color: Colors.amber.shade700,
          // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
    );
  }
}

