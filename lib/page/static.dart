import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/summarydata/summaryhumid.dart';
import 'package:flutter_application_1/page/summarydata/summarypm25.dart';
import 'package:flutter_application_1/page/summarydata/summarytemp.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

class StaticScreen extends StatefulWidget {
  const StaticScreen({super.key});

  @override
  State<StaticScreen> createState() => _StaticScreenState();
}

class _StaticScreenState extends State<StaticScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
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
                height: 160,
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
                      height: 100,
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
                            const SizedBox(height: 10),
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
                                  height: 30,
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
                                  height: 30,
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
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // width: MediaQuery.of(context).size.height,
                      width: 380,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TabBar(
                          controller: tabController,
                          tabs: const [
                            Tab(text: 'อุณหภูมิ'),
                            Tab(text: 'ความชื้น'),
                            Tab(text: 'PM2.5'),
                          ],
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                              color: const Color(0xff3559E0),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      
                    ),
                    SizedBox(
                      height: 800,
                      child: Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children:  const [
                        SummaryTemp(),
                        SummaryHumid(),
                        SummaryPM25(),
                                      ],),
                      ),
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
