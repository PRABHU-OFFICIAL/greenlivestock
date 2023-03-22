import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:webview_flutter/webview_flutter.dart';

class SHBD extends StatelessWidget {
  const SHBD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soil Health and Biodiversity'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                    height: 350,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/soli_health.png',
                          height: 350,
                        ),
                      ],
                    )),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: const [
                      Text(
                        "About Soil Health and Biodiversity",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'Soil health and biodiversity are two interrelated concepts that are crucial to the sustainability of our planet. Soil health refers to the ability of soil to function as a living ecosystem that sustains plants, animals, and humans. Healthy soil is rich in organic matter, has a diverse community of microorganisms, and is able to retain water and nutrients. Biodiversity, on the other hand, refers to the variety of plant and animal species that live in a given area. A high level of biodiversity is important because it supports ecosystem services, such as pollination, soil formation, and nutrient cycling. There is a strong link between soil health and biodiversity. Healthy soils support diverse plant communities, which in turn provide habitat and food for a variety of animals. Biodiversity also plays a key role in maintaining soil health. For example, earthworms and other soil organisms break down organic matter and make nutrients available to plants. However, soil degradation and loss of biodiversity are serious environmental issues that threaten the sustainability of our planet. Soil degradation can result from factors such as erosion, nutrient depletion, and chemical pollution. Loss of biodiversity can result from habitat destruction, overexploitation, and climate change. It is important to take action to promote soil health and biodiversity conservation in order to maintain the health and productivity of our ecosystems.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 100,
                      maxHeight: 300,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: const [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      'https://thumbs.dreamstime.com/b/textured-sandy-soil-surface-as-background-top-view-148536758.jpg'),
                                ),
                                Text("Sandy Soil",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Sandy soil is a type of soil that has a high proportion of sand-sized particles (greater than 0.05 mm in diameter). It is typically light in color and low in nutrients. Sandy soil is often found in deserts and other arid regions.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(children: const [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    'https://thumbs.dreamstime.com/b/brown-lumpy-soil-shady-light-as-background-71489276.jpg'),
                              ),
                              Text("Clay Soil",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'Clay soil is a type of soil that has a high proportion of clay-sized particles (less than 0.002 mm in diameter). It is typically dark in color and low in nutrients. Clay soil is often found in wetlands and other areas with high rainfall.',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: const [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      'https://img.freepik.com/premium-photo/fertile-loam-soil-suitable-planting_38663-516.jpg'),
                                ),
                                Text("Loamy Soil",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Loamy soil is a type of soil that has a balanced proportion of sand, silt, and clay particles. It is typically dark brown in color and rich in nutrients. Loamy soil is often found in temperate regions.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: const [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      'https://www.insightsonindia.com/wp-content/uploads/2021/09/Chalk-Soil.jpg'),
                                ),
                                Text("Chalk Soil",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Chalk soil is a type of soil that has a high proportion of calcium carbonate. It is typically white in color and low in nutrients. Chalk soil is often found in coastal regions.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Learn More',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        width: MediaQuery.of(context).size.width - 32,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: PointsLineChart(
                                  PointsLineChart._createSampleData(),
                                  animate: true)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.water_drop_outlined,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Soil Testing',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Soil testing is the analysis of soil samples to determine the soil’s physical and chemical properties and suitability for growing plants.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WebViewWidget(
                                      controller: WebViewController()
                                        ..loadRequest(
                                          Uri.parse(
                                              "https://eos.com/blog/soil-testing/"),
                                        ))),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children:  [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.self_improvement,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Soil Improvement',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Soil improvement is the process of improving the physical and chemical properties of soil to make it more suitable for growing plants.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WebViewWidget(
                                      controller: WebViewController()
                                        ..loadRequest(
                                          Uri.parse(
                                              "https://theconstructor.org/others/select-soil-improvement-method-soil-types/73023//"),
                                        ))),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.energy_savings_leaf_outlined,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Plant Identification',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Plant identification is the process of determining the species of a plant by examining its physical characteristics.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WebViewWidget(
                                      controller: WebViewController()
                                        ..loadRequest(
                                          Uri.parse(
                                              "https://plant.id/"),
                                        ))),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children:  [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.biotech,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Biodiversity Monitoring',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Biodiversity monitoring is the process of measuring and monitoring the diversity of life on Earth. ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewWidget(
                                        controller: WebViewController()
                                          ..loadRequest(
                                            Uri.parse(
                                                "https://unece.org/environment-policy/publications/guidelines-developing-national-biodiversity-monitoring-systems"),
                                          ))),
                              );
                            }
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children:  [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.history_edu,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Education Resources',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Education resources are materials that are used in the process of educating or instructing people, particularly in schools and universities. ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewWidget(
                                        controller: WebViewController()
                                          ..loadRequest(
                                            Uri.parse(
                                                "https://caps.osu.edu/PlantDom"),
                                          ))),
                              );
                            }
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.social_distance,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Social Networking',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Social networking is the use of internet-based social media programs to make connections with friends, family, classmates, and people with similar interests. ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewWidget(
                                        controller: WebViewController()
                                          ..loadRequest(
                                            Uri.parse(
                                                "https://onlinelibrary.wiley.com/doi/full/10.1111/pce.13966"),
                                          ))),
                              );
                            }
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 5,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children:  [
                        const SizedBox(
                          height: 16,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.add_alert,
                            color: Colors.red,
                          ),
                          title: const Text(
                            'Reminders and Alerts',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Reminders and alerts are notifications that are sent to a user to remind them of an upcoming event or to alert them to a change in their environment. ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebViewWidget(
                                        controller: WebViewController()
                                          ..loadRequest(
                                            Uri.parse(
                                                "https://www.chemengonline.com/define-alerts-and-reminders-for-notification-of-plant-conditions/"),
                                          ))),
                              );
                            }
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PointsLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const PointsLineChart(this.seriesList, {super.key, required this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory PointsLineChart.withSampleData() {
    return PointsLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
        animationDuration: const Duration(seconds: 30),
        behaviors: [
          charts.ChartTitle('Time',
              behaviorPosition: charts.BehaviorPosition.bottom,
              titleOutsideJustification:
                  charts.OutsideJustification.middleDrawArea),
          charts.ChartTitle('Soil Growth',
              behaviorPosition: charts.BehaviorPosition.start,
              titleOutsideJustification:
                  charts.OutsideJustification.middleDrawArea),
        ],
        _createSampleData().cast<charts.Series<dynamic, num>>(),
        animate: animate,
        defaultRenderer: charts.LineRendererConfig(includePoints: true));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, num>> _createSampleData() {
    final data = [
      LinearSales(0, 5),
      LinearSales(1, 10),
      LinearSales(2, 15),
      LinearSales(3, 25),
      LinearSales(4, 30),
      LinearSales(5, 35),
      LinearSales(6, 50),
      LinearSales(7, 37),
      LinearSales(8, 29),
      LinearSales(9, 89),
      LinearSales(10, 21),
      LinearSales(11, 12),
      LinearSales(12, 100),
      LinearSales(13, 75),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
