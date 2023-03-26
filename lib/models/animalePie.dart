import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnimalPieGraph extends StatelessWidget {
  const AnimalPieGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(PieChartData(
        centerSpaceColor: Colors.transparent,
        sectionsSpace: 5,
        centerSpaceRadius: 50,
        borderData: FlBorderData(show: true),
        sections: [
          PieChartSectionData(
              value: 10,
              color: Colors.purple,
              borderSide: const BorderSide(color: Colors.black, width: 2),
              radius: 100,
              title: 'Cattle',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          PieChartSectionData(
              value: 30,
              color: Colors.blue,
              borderSide: const BorderSide(color: Colors.black, width: 2),
              radius: 100,
              title: 'Poultry',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          PieChartSectionData(
              value: 20,
              borderSide: const BorderSide(color: Colors.black, width: 2),
              color: Colors.green,
              radius: 100,
              title: 'Swine',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              value: 10,
              color: Colors.yellow,
              radius: 100,
              title: 'Sheep',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              value: 5,
              color: Colors.orange,
              radius: 100,
              title: 'Goat',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              value: 2,
              color: Colors.red,
              radius: 100,
              title: 'Horse',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          PieChartSectionData(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              value: 3,
              color: Colors.pink,
              radius: 100,
              title: 'Other',
              titleStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ]));
  }
}
