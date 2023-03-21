import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 350,
                width: double.infinity,
                child: Column(
                  children: [
                    Image.asset('assets/soli_health.png',height: 350,),
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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 270,
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
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Learn More',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
