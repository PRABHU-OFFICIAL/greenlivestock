import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IdealsPage extends StatefulWidget {
  const IdealsPage({Key? key}) : super(key: key);

  @override
  State<IdealsPage> createState() => _IdealsPageState();
}

class _IdealsPageState extends State<IdealsPage> {
  @override
  Widget build(BuildContext context) {
    late TrackballBehavior trackballBehavior = TrackballBehavior();
    // late List<ChartSampleData> chartData = <ChartSampleData>[
    //   ChartSampleData(
    //       x: DateTime(2000, 1, 1), open: 35, high: 28, low: 34, close: 32),
    //   ChartSampleData(
    //       x: DateTime(2001, 1, 1), open: 40, high: 32, low: 35, close: 30),
    //   ChartSampleData(
    //       x: DateTime(2002, 1, 1), open: 45, high: 35, low: 40, close: 35),
    //   ChartSampleData(
    //       x: DateTime(2003, 1, 1), open: 50, high: 40, low: 45, close: 40),
    //   ChartSampleData(
    //       x: DateTime(2004, 1, 1), open: 25, high: 45, low: 50, close: 45),
    //   ChartSampleData(
    //       x: DateTime(2005, 1, 1), open: 40, high: 50, low: 55, close: 50),
    //   ChartSampleData(
    //       x: DateTime(2006, 1, 1), open: 15, high: 55, low: 60, close: 55),
    //   ChartSampleData(
    //       x: DateTime(2007, 1, 1), open: 130, high: 60, low: 65, close: 60),
    //   ChartSampleData(
    //       x: DateTime(2008, 1, 1), open: 112, high: 65, low: 70, close: 65),
    //   ChartSampleData(
    //       x: DateTime(2009, 1, 1), open: 102, high: 70, low: 75, close: 70),
    //   ChartSampleData(
    //       x: DateTime(2010, 1, 1), open: 80, high: 75, low: 80, close: 75),
    //   ChartSampleData(
    //       x: DateTime(2011, 1, 1), open: 78, high: 80, low: 85, close: 80),
    //   ChartSampleData(
    //       x: DateTime(2012, 1, 1), open: 27, high: 85, low: 90, close: 85),
    //   ChartSampleData(
    //       x: DateTime(2013, 1, 1), open: 120, high: 90, low: 95, close: 90),
    //   ChartSampleData(
    //       x: DateTime(2014, 1, 1), open: 85, high: 95, low: 100, close: 95),
    //   ChartSampleData(
    //       x: DateTime(2015, 1, 1), open: 10, high: 100, low: 105, close: 100),
    //   ChartSampleData(
    //       x: DateTime(2016, 1, 1), open: 15, high: 105, low: 110, close: 105),
    //   ChartSampleData(
    //       x: DateTime(2017, 1, 1), open: 20, high: 110, low: 115, close: 110),
    //   ChartSampleData(
    //       x: DateTime(2018, 1, 1), open: 25, high: 115, low: 120, close: 115),
    //   ChartSampleData(
    //       x: DateTime(2019, 1, 1), open: 30, high: 120, low: 125, close: 120),
    //   ChartSampleData(
    //       x: DateTime(2020, 1, 1), open: 15, high: 125, low: 130, close: 125),
    //   ChartSampleData(
    //       x: DateTime(2021, 1, 1), open: 14, high: 130, low: 135, close: 130),
    //   ChartSampleData(
    //       x: DateTime(2022, 1, 1), open: 45, high: 135, low: 140, close: 135),
    //   ChartSampleData(
    //       x: DateTime(2023, 1, 1), open: 50, high: 140, low: 145, close: 140),
    // ];

    late List<ChartSampleData> chartData = List.generate(50, (index) {
      return ChartSampleData(
        x: DateTime.now().subtract(Duration(days: 50 - index)),
        open: Random().nextInt(100) + 50,
        high: Random().nextInt(50) + 100,
        low: Random().nextInt(50) + 50,
        close: Random().nextInt(100) + 50,
      );
    });

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: SfCartesianChart(
                title: ChartTitle(
                    text: 'CME Live Cattle Futures',
                    textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red)),
                trackballBehavior: trackballBehavior,
                series: <CandleSeries>[
                  CandleSeries<ChartSampleData, DateTime>(
                    dataSource: chartData,
                    xValueMapper: (ChartSampleData sales, _) => sales.x,
                    highValueMapper: (ChartSampleData sales, _) => sales.high,
                    lowValueMapper: (ChartSampleData sales, _) => sales.low,
                    openValueMapper: (ChartSampleData sales, _) => sales.open,
                    closeValueMapper: (ChartSampleData sales, _) => sales.close,
                  ),
                ],
                primaryXAxis: DateTimeAxis(
                  dateFormat: DateFormat.MMM(),
                  majorGridLines: const MajorGridLines(width: 0),
                ),
                primaryYAxis: NumericAxis(
                  minimum: 10,
                  maximum: 300,
                  interval: 290,
                  numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'CME Live Stock Farming Futures',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Cotton',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$0.77',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                            Text(
                              '-1.14%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Oats',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$3.60',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                            Text(
                              '-0.96%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Lumber',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$410.70',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                            Text(
                              '-3.62%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Coffee',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$1.74',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                            Text(
                              '-1.83%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Cocoa',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$2145',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              '+0.94%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Feeder Cattle',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$1.89',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              '+0.21%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Milk',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$18.09',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              '+0.28%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Orange Juice',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$2.43',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              '+1.51%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Palm OIl',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$3,750',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                            Text(
                              '-2.22%',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        )),
                    ListTile(
                        leading: const Icon(
                          CupertinoIcons.cloud_fill,
                          color: Colors.red,
                        ),
                        title: const Text('Rice',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: const Text('\$17.40',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        trailing: Column(
                          children: const [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              '+1.05%',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        )),
                  ],
                )),
          ),
        ],
      )),
    );
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.open, this.close, this.low, this.high});
  final DateTime? x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}
