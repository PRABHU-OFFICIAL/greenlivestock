import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LiveGraphScreen extends StatefulWidget {
  const LiveGraphScreen({super.key});

  @override
  _LiveGraphScreenState createState() => _LiveGraphScreenState();
}

class _LiveGraphScreenState extends State<LiveGraphScreen> {
  late List<charts.Series<LiveChartData, int>> _seriesList;
  late Timer _timer;
  List<LiveChartData> _dataList = [];
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _setupGraphData();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      _updateGraphData();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _setupGraphData() {
    _dataList = List.generate(20, (index) => LiveChartData(index, 0));
    _seriesList = [
      charts.Series<LiveChartData, int>(
        id: 'Live Data',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LiveChartData data, _) => data.index,
        measureFn: (LiveChartData data, _) => data.value,
        data: _dataList,
      ),
    ];
  }

  void _updateGraphData() {
    setState(() {
      final random = Random();
      final index = random.nextInt(_dataList.length);
      final value = random.nextDouble() * 100;
      _dataList[index] = LiveChartData(index, value);
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: charts.LineChart(
                _seriesList,
                animate: false,
                domainAxis: charts.NumericAxisSpec(
                  tickProviderSpec: charts.StaticNumericTickProviderSpec(
                    <charts.TickSpec<num>>[
                      charts.TickSpec<num>(0, label: ''),
                      charts.TickSpec<num>(5, label: '5s'),
                      charts.TickSpec<num>(10, label: '10s'),
                      charts.TickSpec<num>(15, label: '15s'),
                      charts.TickSpec<num>(20, label: '20s'),
                    ],
                  ),
                ),
                behaviors: [
                  charts.LinePointHighlighter(
                    symbolRenderer: CustomCircleSymbolRenderer(),
                    showHorizontalFollowLine:
                        charts.LinePointHighlighterFollowLineType.nearest,
                    showVerticalFollowLine:
                        charts.LinePointHighlighterFollowLineType.none,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Stock Counters: $_counter',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class LiveChartData {
  final int index;
  final double value;

  LiveChartData(this.index, this.value);
}

class CustomCircleSymbolRenderer extends charts.CircleSymbolRenderer {
  void painter(charts.ChartCanvas canvas, Rectangle<num> bounds,
      {required List<int> dashPattern,
      required charts.Color fillColor,
      required charts.FillPatternType fillPattern,
      required charts.Color strokeColor,
      required double strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: charts.MaterialPalette.white,
        fillPattern: fillPattern,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);
  }
}
