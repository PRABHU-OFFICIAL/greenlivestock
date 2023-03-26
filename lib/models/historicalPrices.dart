import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HistoricalPriceGraphScreen extends StatefulWidget {
  const HistoricalPriceGraphScreen({super.key});

  @override
  _HistoricalPriceGraphScreenState createState() =>
      _HistoricalPriceGraphScreenState();
}

class _HistoricalPriceGraphScreenState
    extends State<HistoricalPriceGraphScreen> {
  int _selectedRangeIndex = 0;
  final List<double> _prices = [
    1.2,
    1.4,
    1.8,
    2.2,
    2.6,
    2.8,
    3.0,
    1.9,
    2.5,
    3.3,
    1.5,
    1.7,
    1.2,
    1.1,
    1.0,
    1.8,
    1.4,
    2,
    2.3,
    2.1,
    2.7,
    3.9,
    2.2,
    2.5,
    3.1,
    1.9,
    1.4,
    1.3,
    1.3,
    1.6
  ];

  LineChartData _createLineChartData() {
    List<double> pricesToShow = [];

    // Choose the prices to show based on the selected range
    switch (_selectedRangeIndex) {
      case 0:
        pricesToShow = _prices.sublist(0, 5);
        break;
      case 1:
        pricesToShow = _prices.sublist(0, 9);
        break;
      case 2:
        pricesToShow = _prices;
        break;
    }

    // Define the line chart data
    return LineChartData(
      lineBarsData: [
        LineChartBarData(
          spots: pricesToShow
              .asMap()
              .entries
              .map((entry) => FlSpot(entry.key.toDouble(), entry.value))
              .toList(),
          isCurved: true,
          color: Colors.blue,
          barWidth: 4,
          dotData: FlDotData(
            show: true,
          ),
          belowBarData: BarAreaData(
            show: true,
            color: Colors.blue.withOpacity(0.1),
          ),
        ),
      ],
      minY: 0,
      titlesData: FlTitlesData(
        show: true,
        leftTitles: AxisTitles(
          axisNameSize: 10,
          axisNameWidget: const Text(
            'Expected Prices',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
          axisNameSize: 10,
          axisNameWidget: const Text(
            'Time',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20),
            const Text("Predicted Future Price Graph",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _onRangeButtonPressed(0),
                  child: const Text('1D'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _onRangeButtonPressed(1),
                  child: const Text('1W'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _onRangeButtonPressed(2),
                  child: const Text('1M'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 1.5,
                  child: LineChart(
                    _createLineChartData(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onRangeButtonPressed(int index) {
    setState(() {
      _selectedRangeIndex = index;
    });
  }
}
