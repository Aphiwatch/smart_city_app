import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SummaryPM25 extends StatefulWidget {
  const SummaryPM25({super.key});

  @override
  State<SummaryPM25> createState() => _SummaryPM25State();
}

class _SummaryPM25State extends State<SummaryPM25> {
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
        child: Center(
          child: Column(
            children: [
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
                        Text("PM2.5 μg/m³"),
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
                              xValueMapper: (_AVGData hours, _) => hours.hour,
                              yValueMapper: (_AVGData temps, _) => temps.temp,
          
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
                        Text("PM2.5 μg/m³"),
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
                            xValueMapper: (_AVGData hours, _) => hours.hour,
                            yValueMapper: (_AVGData temps, _) => temps.temp,
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
                        Text("PM2.5 μg/m³"),
                      ],
                    ),
                    SfCartesianChart(
                        primaryXAxis: const CategoryAxis(),
                        // Chart title
                        title: const ChartTitle(text: 'Yearly Static'),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: <CartesianSeries<_AVGData, String>>[
                          AreaSeries<_AVGData, String>(
                            dataSource: data,
                            xValueMapper: (_AVGData hours, _) => hours.hour,
                            yValueMapper: (_AVGData temps, _) => temps.temp,
                            name: 'Temp',
                            // Enable data label
                            dataLabelSettings:
                                const DataLabelSettings(isVisible: true),
                            color: const Color(0xff3559E0),
                          )
                        ]),
                  ],
                ),
              )
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
