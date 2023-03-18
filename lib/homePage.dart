import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenlivestock/lar.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final AudioPlayer player = AudioPlayer();
  play() async {
    await player.setUrl("https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => exit(0),
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(children: [
                const SizedBox(height: 20),
                InkWell(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/card1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LAR()));
                  },
                ),
                const Text(
                  "Learn Agro Resources",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/card2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  "Animal Welfare Standards",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/card3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  "Soil Health & Bio-Diversity",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/card4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  "Green House Gas Emissions",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Green Livestock Farming",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset("assets/image1.png"),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: const Text(
                      "Green Live Stock Farming means environmentally friendly and efficient food production that minimizes harmful impacts. On top of that, it means improving both food safety and animal welfare.",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    textAlign: TextAlign.center),
                  ),
                const SizedBox(height: 20),
                const Image(image: AssetImage("assets/image2.png"), height: 80),
                const SizedBox(height: 10),
                const Image(image: AssetImage("assets/image3.png"), height: 80),
                const SizedBox(height: 10),
                const Image(image: AssetImage("assets/image4.png"), height: 80),
                const SizedBox(height: 10),
                const Image(image: AssetImage("assets/image5.png"), height: 80),
                const SizedBox(height: 10),
                const Image(image: AssetImage("assets/image6.png"), height: 80),
                const SizedBox(height: 10),
                const Image(image: AssetImage("assets/image7.png"), height: 80),
                const SizedBox(height: 20),
                const Text("Podcasts",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
