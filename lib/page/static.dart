import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StaticScreen extends StatefulWidget {
  const StaticScreen({super.key});

  @override
  State<StaticScreen> createState() => _StaticScreenState();
}

class _StaticScreenState extends State<StaticScreen> {
  List<_AVGData> data = [
    _AVGData('10AM', 35),
    _AVGData('11AM', 28),
    _AVGData('12AM', 34),
    _AVGData('1PM', 32),
    _AVGData('2PM', 40),
    _AVGData('3PM', 37),
  ];

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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(0, 8),
                          )
                        ]
                    ),
                    height: 50,
                    width: 380,
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(4),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 110,
                              margin: const EdgeInsets.only(bottom: 0),
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: const Color(0xff3559E0),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text("อุณหภูมิ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 110,
                              margin: const EdgeInsets.only(bottom: 0),
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: const Color(0xff3559E0),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text("ความชื้น",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              height: 40,
                              width: 110,
                              margin: const EdgeInsets.only(bottom: 0),
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: const Color(0xff3559E0),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Text("PM2.5",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // margin: const EdgeInsets.all(10),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Text("16 กุมภาพันธ์ 2567"),
                          ],
                        ),
                        const Row(
                          children: [
                            Text("Temp °C"),
                          ],
                        ),
                        SfCartesianChart(
                            primaryXAxis: const CategoryAxis(),
                            // Chart title
                            title: const ChartTitle(text: 'Daily Static'),
                            // Enable legend
                            // legend: Legend(isVisible: true),
                            // Enable tooltip
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <CartesianSeries<_AVGData, String>>[
                              LineSeries<_AVGData, String>(
                                  dataSource: data,
                                  xValueMapper: (_AVGData hours, _) =>
                                      hours.hour,
                                  yValueMapper: (_AVGData temps, _) =>
                                      temps.temp,

                                  // Enable data label
                                  dataLabelSettings:
                                      const DataLabelSettings(isVisible: true))
                            ]),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Text("16 กุมภาพันธ์ 2567"),
                          ],
                        ),
                        const Row(
                          children: [
                            Text("Temp °C"),
                          ],
                        ),
                        SfCartesianChart(
                            primaryXAxis: const CategoryAxis(),
                            // Chart title
                            title: const ChartTitle(text: 'Monthly Static'),
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <CartesianSeries<_AVGData, String>>[
                              ColumnSeries<_AVGData, String>(
                                  dataSource: data,
                                  xValueMapper: (_AVGData hours, _) =>
                                      hours.hour,
                                  yValueMapper: (_AVGData temps, _) =>
                                      temps.temp,
                                  name: 'Temp',
                                  // Enable data label
                                  dataLabelSettings:
                                      const DataLabelSettings(isVisible: true),
                                  color: const Color(0xff3559E0),
                                )
                            ]),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Text("16 กุมภาพันธ์ 2567"),
                          ],
                        ),
                        const Row(
                          children: [
                            Text("Temp °C"),
                          ],
                        ),
                        SfCartesianChart(
                            primaryXAxis: const CategoryAxis(),
                            // Chart title
                            title: const ChartTitle(text: 'Years Static'),
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <CartesianSeries<_AVGData, String>>[
                              ColumnSeries<_AVGData, String>(
                                  dataSource: data,
                                  xValueMapper: (_AVGData hours, _) =>
                                      hours.hour,
                                  yValueMapper: (_AVGData temps, _) =>
                                      temps.temp,
                                  name: 'Temp',
                                  // Enable data label
                                  dataLabelSettings:
                                      const DataLabelSettings(isVisible: true),
                                  color: const Color(0xff3559E0),
                                )
                            ]),
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                                            style:
                                                TextStyle(color: Colors.white),
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
                                          Icon(Icons.masks,
                                              color: Colors.white),
                                          Text(
                                            "48 μg/m³",
                                            style:
                                                TextStyle(color: Colors.white),
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

class _AVGData {
  _AVGData(this.hour, this.temp);

  final String hour;
  final double temp;
}
