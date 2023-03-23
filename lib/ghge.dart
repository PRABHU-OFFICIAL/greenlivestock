import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class EmissionDataScreen extends StatefulWidget {
  const EmissionDataScreen({super.key});

  @override
  _EmissionDataScreenState createState() => _EmissionDataScreenState();
}

class _EmissionDataScreenState extends State<EmissionDataScreen> {
  final List<_EmissionData> _data = [
    _EmissionData('CO2', 400, Colors.green),
    _EmissionData('NO2', 100, Colors.orange),
    _EmissionData('SO2', 30, Colors.red),
    _EmissionData('O3', 50, Colors.blue),
    _EmissionData('PM2.5', 5, Colors.purple),
    _EmissionData('PM10', 15, Colors.deepPurple),
    _EmissionData('NH3', 2, Colors.amber),
    _EmissionData('CO', 500, Colors.teal),
    _EmissionData('VOC', 20, Colors.brown),
    _EmissionData('CH4', 2, Colors.blueGrey),
  ];

  late List<charts.Series<_EmissionData, String>> _chartData = [];

  @override
  void initState() {
    super.initState();
    _chartData = [
      charts.Series(
        id: 'Emission Data',
        data: _data,
        domainFn: (_EmissionData data, _) => data.name,
        measureFn: (_EmissionData data, _) => data.value,
        colorFn: (_EmissionData data, _) =>
            charts.ColorUtil.fromDartColor(data.color),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emission Data'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Emission Levels',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Expanded(
                    child: charts.BarChart(
                      _chartData,
                      animate: true,
                      vertical: false,
                      barRendererDecorator: charts.BarLabelDecorator(
                        labelAnchor: charts.BarLabelAnchor.end,
                        labelPosition: charts.BarLabelPosition.outside,
                        labelPadding: 4,
                        outsideLabelStyleSpec: const charts.TextStyleSpec(
                          fontSize: 16,
                        ),
                      ),
                      domainAxis: const charts.OrdinalAxisSpec(
                        renderSpec: charts.SmallTickRendererSpec(
                          labelRotation: 45,
                        ),
                      ),
                      primaryMeasureAxis: const charts.NumericAxisSpec(
                        tickProviderSpec: charts.BasicNumericTickProviderSpec(
                          desiredTickCount: 5,
                          dataIsInWholeNumbers: true,
                        ),
                        renderSpec: charts.GridlineRendererSpec(
                          labelOffsetFromAxisPx: 12,
                          labelAnchor: charts.TickLabelAnchor.before,
                          labelJustification:
                              charts.TickLabelJustification.inside,
                          tickLengthPx: 4,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Pollutants',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _data.length,
                      itemBuilder: (BuildContext context, int index) {
                        final _EmissionData emissionData = _data[index];
                        return _buildEmissionCard(
                          emissionData.name,
                          emissionData.value,
                          emissionData.color,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmissionCard(String name, int value, Color color) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Text(
            name.substring(0, 1),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '$value g/m³',
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class _EmissionData {
  final String name;
  final int value;
  final Color color;

  _EmissionData(this.name, this.value, this.color);
}
