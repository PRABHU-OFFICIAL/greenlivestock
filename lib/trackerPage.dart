import 'package:flutter/material.dart';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sustainable Livestock Farming Tracking'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Livestock Production',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Number of Livestock:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '1000',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Average Weight:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '500 lbs',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Environmental Impact',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Carbon Footprint:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '1000 tons CO2',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Water Usage:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '5000 gallons',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            const Text(
              'Animal Welfare',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Animal Health Score:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '90%',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Mortality Rate:',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '2%',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
