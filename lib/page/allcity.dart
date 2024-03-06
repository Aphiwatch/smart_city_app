// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AllCity extends StatefulWidget {
  const AllCity({super.key});

  @override
  State<AllCity> createState() => _AllCityState();
}

class _AllCityState extends State<AllCity> {
  // int activeIndex = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // color: Colors.deepPurple,
          child: SizedBox(
            height: 400,
            width: 360,
            child: PageView(
              controller: _controller,
              
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // //color: Colors.amber.shade200,
                      margin: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ความเสี่ยงต่ำ"),
                          Text("ชุมชน1"),
                        ],
                      ),
                    ),
                    Container(
                      // //color: Colors.amber.shade100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 290,
                          width: 290,
                          child: SvgPicture.asset(
                              'assets/images/undraw_hiking_re_k0bc.svg')),
                    ),
                    Container(
                      // //color: Colors.amber.shade700,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // //color: Colors.amber.shade200,
                      margin: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ความเสี่ยงปานกลาง"),
                          Text("ชุมชน2"),
                        ],
                      ),
                    ),
                    Container(
                      // //color: Colors.amber.shade100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 290,
                          width: 290,
                          child: SvgPicture.asset(
                              'assets/images/undraw_outdoor_adventure_re_j3b7.svg')),
                    ),
                    Container(
                      // //color: Colors.amber.shade700,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //color: Colors.amber.shade200,
                      margin: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ความเสี่ยงสูง"),
                          Text("ชุมชน3"),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.amber.shade100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 290,
                          width: 290,
                          child: SvgPicture.asset(
                              'assets/images/undraw_quality_time_wiyl.svg')),
                    ),
                    Container(
                      //color: Colors.amber.shade700,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //color: Colors.amber.shade200,
                      margin: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("อันตราย"),
                          Text("ชุมชน4"),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.amber.shade100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 290,
                          width: 290,
                          child: SvgPicture.asset(
                              'assets/images/undraw_reading_time_re_phf7.svg')),
                    ),
                    Container(
                      //color: Colors.amber.shade700,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //color: Colors.amber.shade200,
                      margin: const EdgeInsets.all(10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("อันตรายมาก"),
                          Text("ชุมชน5"),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.amber.shade100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 290,
                          width: 290,
                          child: SvgPicture.asset(
                              'assets/images/undraw_notify_re_65on.svg')),
                    ),
                    Container(
                      //color: Colors.amber.shade700,
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
              ],
            ),
          ),
        ),
        Container(
          // color: Colors.deepOrange,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          // margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: const ScaleEffect(
                  dotWidth: 6, dotHeight: 6,
                  activeDotColor: Color(0xff3559E0),
                  dotColor: Colors.black,
                ),
              ),
              const Icon(Icons.menu),
            ],
          ),
        )
      ],
    );
  }
}
