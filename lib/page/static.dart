import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaticScreen extends StatefulWidget {
  const StaticScreen({super.key});

  @override
  State<StaticScreen> createState() => _StaticScreenState();
}

class _StaticScreenState extends State<StaticScreen> {
  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          // color: Colors.amber,
          child: Column(
            children: [
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "ผลสรุปสถิติ",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
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
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 60,
                    width: 380,
                    child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "เชียงเครือ สกลนคร ประเทศไทย",
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                    width: 340,
                    child: CupertinoSlidingSegmentedControl(
                      thumbColor: const Color(0xff3559E0),
                      backgroundColor: const Color(0xFFFFFFFF),
                      children: const {
                        0: Text('อุณหภูมิ'),
                        1: Text('ความชื้น'),
                        2: Text('PM2.5'),
                      },
                      groupValue: _sliding,
                      onValueChanged: (int? newValue) {
                        setState(() {
                          _sliding = newValue;
                        });
                      },
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
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 400,
                    width: 380,
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
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 150,
                    width: 380,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("เดือนที่มีความเสี่ยงสูงสุด"),
                              Text(
                                "2566",
                                style: TextStyle(color: Color(0xff3559E0)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 340,
                          decoration: BoxDecoration(
                              color: const Color(0xff3559E0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "#1 ธันวาคม 2566",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Icon(Icons.thermostat_auto,
                                              color: Colors.white),
                                          Text(
                                            "40 °C",
                                            style: TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                      height: 20,
                                      child: VerticalDivider(
                                        thickness: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Icon(Icons.water_drop,
                                              color: Colors.white),
                                          Text(
                                            "50 %",
                                            style: TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                      height: 20,
                                      child: VerticalDivider(
                                        thickness: 2,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Icon(Icons.masks, color: Colors.white),
                                          Text(
                                            "48 μg/m³",
                                            style: TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
