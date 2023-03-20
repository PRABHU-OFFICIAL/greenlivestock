import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:greenlivestock/lar.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool isPlaying = false;
  bool isLiked = false;

  void playAudio(String title) async {
    await _audioPlayer.setUrl(title);
    await _audioPlayer.play();
  }

  void pauseAudio() async {
    await _audioPlayer.pause();
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
                const SizedBox(height: 20),
                const Text("Know about Us",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 500),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: const [
                      "assets/carousel1.png",
                      "assets/carousel2.png",
                      "assets/carousel3.png",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image.asset(i));
                        },
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Contact Us",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 10),
                ContactUs(
                  logo: const NetworkImage(
                      'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/events/WhatsApp%20Image%202022-09-13%20at%2020.16.37_kuxZo9x.jpeg'),
                  email: 'lituplayer@gmail.com',
                  companyName: 'Prabhu Prasad Penthoi',
                  phoneNumber: '+918117017978',
                  dividerThickness: 2,
                  website:
                      'https://prabhu-official.github.io/myportfoliowebsite/',
                  githubUserName: 'PRABHU-OFFICIAL',
                  linkedinURL:
                      'https://www.linkedin.com/in/prabhu-prasad-penthoi-73b870189/',
                  tagLine: 'Flutter Developer',
                  twitterHandle: 'AbhishekDoshi26',
                  textColor: Colors.white,
                  cardColor: Colors.black,
                  companyColor: Colors.red,
                  taglineColor: Colors.blue,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
