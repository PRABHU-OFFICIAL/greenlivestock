import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:greenlivestock/models/pdfViewer.dart';
import 'package:just_audio/just_audio.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LAR extends StatefulWidget {
  const LAR({Key? key}) : super(key: key);

  @override
  State<LAR> createState() => _LARState();
}

class _LARState extends State<LAR> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  void playAudio(String title) async {
    await _audioPlayer.setUrl(title);
    await _audioPlayer.play();
  }

  void pauseAudio() async {
    await _audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    List articlesList = Articles.getData;
    List videosList = Videos.getData;
    List podcastsList = Podcasts.getData;
    List tutorialsList = Tutorials.getData;
    List glossaryList = Glossary.getData;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Agro Resources"),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) => ConstrainedBox(
              constraints: BoxConstraints(minWidth: constraints.maxWidth),
              child: ListView(
                children: <Widget>[
                  const SizedBox(height: 10),
                  const Text("Articles",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center),
                  ListView.builder(
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        leading: const Icon(
                          Icons.article,
                          color: Colors.red,
                        ),
                        title: Text(
                          articlesList[index]["name"],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        subtitle: Text(articlesList[index]["subtitle"]),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PdfViewer(
                                url: articlesList[index]["net"].toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    itemCount: articlesList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  const SizedBox(height: 10),
                  const Text("Videos",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: videosList
                        .map((youtube) => Card(
                              child: ListTile(
                                title: Text(youtube["name"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                leading: const Icon(
                                  Icons.video_collection,
                                  color: Colors.red,
                                ),
                                onTap: () async {
                                  await Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => WebViewWidget(
                                              controller: youtube["net"])));
                                },
                              ),
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 20),
                  const Text("Podcasts",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: podcastsList
                        .map(
                          (podcast) => Card(
                            child: ListTile(
                              title: Text(podcast["name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              subtitle: Text(podcast["subtitle"]),
                              leading: const Icon(
                                Icons.audiotrack,
                                color: Colors.red,
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WebViewWidget(
                                        controller: podcast["net"])));
                              },
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  const Text("Interactive Tutorials",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center),
                  Container(
                    height: 350,
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: tutorialsList
                          .map((tutorial) => Card(
                                elevation: 5,
                                margin: const EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: SizedBox(
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Image.asset(tutorial["image"]),
                                      Text(tutorial["title"],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.red)),
                                      Text(tutorial["subtitle"],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Glossary and Key Terms",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                      textAlign: TextAlign.center),
                  const Text(
                    "Tap the tiles to get insights",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: glossaryList
                        .map((glossary) => Card(
                              margin: const EdgeInsets.all(10),
                              elevation: 5,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 25,
                                    child: Icon(
                                      Icons.keyboard_hide,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 50,
                                    padding: const EdgeInsets.all(10),
                                    child: FlipCard(
                                        front: Text(
                                          glossary['front'],
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          textAlign: TextAlign.center,
                                        ),
                                        back: Text(
                                          glossary['back'],
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                          textAlign: TextAlign.center,
                                        )),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class Articles {
  static final getData = [
    {
      "name":
          "Precision Agriculture for Crop and Livestock Farming—Brief Review",
      "subtitle":
          "António Monteiro, Sérgio Santos, Pedro H Gonçalves, and José M. P. Cardoso",
      "net":
          "https://pdfs.semanticscholar.org/dd36/4972bbbb78a5ee50fbf8dbdcee9b220f5c2b.pdf"
    },
    {
      "name":
          "Applications and Challenges of Smart Farming for Developing Sustainable Agriculture",
      "subtitle": "Z. Abdalla, H. El-Ramady, and M. El-Sayed",
      "net":
          "https://jenvbs.journals.ekb.eg/article_240131_81b62e776dbf3f90d0b009e84ab3cdd7.pdf"
    },
    {
      "name":
          "Sustainable Approach to Weed Management: The Role of Precision Weed Management",
      "subtitle": "R. Santos",
      "net":
          "https://web.archive.org/web/20220309051424/https://mdpi-res.com/d_attachment/agronomy/agronomy-12-00118/article_deploy/agronomy-12-00118.pdf"
    },
    {
      "name":
          "Crop Allelopathy for Sustainable Weed Management in Agroecosystems: Knowing the Present with a View to the Future",
      "subtitle": "A. Scavo, G. Mauromicale",
      "net":
          "https://pdfs.semanticscholar.org/265b/445a202e5cb6efebac02e735adc7a0b428f0.pdf"
    },
    {
      "name":
          "Allelopathy in Durum Wheat Landraces as Affected by Genotype and Plant Part",
      "subtitle":
          "A. Scavo, G. Pandino, A. Restuccia, Paolo Caruso, S. Lombardo, G. Mauromicale",
      "net":
          "https://pdfs.semanticscholar.org/24de/c3ae1a111cb2b73b2fe5110c60ed3c4c5084.pdf"
    },
    {
      "name":
          "Genetic Diversity of Omani Durum Wheat (Triticum turgidum sub sp. durum) Landraces",
      "subtitle":
          "A. Lawati, S. Nadaf, N. Al-Saady, Saleh A. Al Hinai, Almandhar Almamari, Masoud H. Al Adawi, Rashid S. Al Hinai, Abdulaziz Al Maawali",
      "net":
          "https://pdfs.semanticscholar.org/1ad3/9633e5627210b9177777ce7c1387eada11ff.pdf"
    },
  ];
}

class Videos {
  static final getData = [
    {
      "name":
          "Integrated Livestock Farming | Integrated Animal and Bird Farming",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=glDWnucY2uM"),
        )
    },
    {
      "name":
          "अमेरिकन Farm पे ऐसी होती है life| A day spent on farm in USA 🇺🇸 Chickens, Goats, etc. | IndiaVlogger",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=AqQ9nM5JIes"),
        )
    },
    {
      "name": "The Environmental Impact of Livestock - RUVIVAL Toolbox",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=VGJduwENNw4"),
        )
    },
    {
      "name":
          "MODERN HIGH-TECH GOAT FARMING-AMAZING GOAT FARM-MODERN TECHNOLOGY LIVESTOCK EQUIPMENT- DAIRY FARMING",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=_3X966BoJxw"),
        )
    },
    {
      "name":
          "Integrated Livestock Farming / Integrated Dairy Farming | Integrated GOAT, COW and BUFFALO Farming",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=l61mWCdJVtc"),
        )
    },
    {
      "name":
          "Modern Pig Farming - Inside the most successful PIG FARM, INCREDIBLE LIVESTOCK RAISING",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=T_tIWWTgmRo"),
        )
    },
    {
      "name":
          "How Are 30,1 Million Beef Cattle In America Raised - American Cattle Farming",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=GMyj6rM00qY"),
        )
    },
    {
      "name":
          "Top 10 Most Profitable Livestock Farming Business Ideas || Animal Farming Business Ideas",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://www.youtube.com/watch?v=O3eHMZURIt4"),
        )
    },
  ];
}

class Podcasts {
  static final getData = [
    {
      "name": "Turfgrass Manager turned Regenerative Farmer with Jared Kerst",
      "subtitle": "Jared Kerst",
      "net": WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/74Ipb3dXiOvQNeBXh9Oh1h"),
        )
    },
    {
      "name": "From Row Crops to Cattle and Poultry with Ethon Pawlaczyk",
      "subtitle": "Ethon Pawlaczyk",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/6aWycMLvtcgpDWs0eostBN"),
        )
    },
    {
      "name": "Multiple Species Grass Farm and Internships with Jesse Straight",
      "subtitle": "Jesse Straight",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/1QIMWhSmiwbCTAxZks4Nxn"),
        )
    },
    {
      "name": "Getting Started on Ten Acres with Calahan Maynard",
      "subtitle": "Calahan Maynard",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/5BXsH2kSNctzmEzQEjlKXo"),
        )
    },
    {
      "name": "The EZ Yoke Ranch with John Simmons",
      "subtitle": "John Simmons",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/4fcxosXbWJAddJgw3DsCNP"),
        )
    },
    {
      "name": "From the City to Multi-Species Grazing with Juan Sanguinetti",
      "subtitle": "Juan Sanguinetti",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/66oDghLGHBB3htrwzRZN2y"),
        )
    },
    {
      "name": "Establishing a Cow-Calf Operation with Lillie Beringer",
      "subtitle": "Lillie Beringer",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/3i9lROZLDmtabYtdFMV8AI"),
        )
    },
    {
      "name": "Low Input Management with Ohio Land and Cattle",
      "subtitle": "James Coffelt",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/3ZrOSpv2qgcbjijxxU35gZ"),
        )
    },
    {
      "name": "The Foggy Bottoms Boys Story",
      "subtitle": "Cody Nicholson",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/6PJePz5RAqtFqpi0vHM5lw"),
        )
    },
    {
      "name": "The J&L Green Farm Story",
      "subtitle": "Jordan Green",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/6i0gWwyQnBsANFiIEKmMYf"),
        )
    },
    {
      "name": "The C&F Farms Story",
      "subtitle": "Jared Frye",
      "net": WebViewController()
        ..loadRequest(
          Uri.parse("https://open.spotify.com/episode/1EGsohqRBL9JVKV8dbSJmL"),
        )
    },
  ];
}

class Tutorials {
  static final getData = [
    {
      "image": "assets/learn1.png",
      "title": "FAO e-learning courses",
      "subtitle":
          "The Food and Agriculture Organization (FAO) of the United Nations offers several e-learning courses on sustainable livestock farming. These courses cover a range of topics, including animal welfare, sustainable feeding practices, and responsible use of antibiotics. The courses are free and self-paced, and they are designed for farmers, extension agents, and other agricultural professionals.",
    },
    {
      "image": "assets/learn6.png",
      "title": "Farm Hack",
      "subtitle":
          "This online community offers a range of resources for sustainable agriculture, including several tutorials on sustainable livestock farming. The tutorials cover topics such as pasture management, rotational grazing, and low-stress livestock handling. The tutorials are free and community-driven, and they are designed for farmers and agricultural professional agents.",
    },
    {
      "image": "assets/learn3.png",
      "title": "Livestock and Poultry Environmental Learning Center",
      "subtitle":
          "This online resource offers a series of interactive modules on sustainable livestock production. The modules cover topics such as manure management, water quality, and air quality. The modules are free and self-paced, and they are designed for farmers and extension agents.",
    },
    {
      "image": "assets/learn4.png",
      "title":
          "Sustainable Agriculture Research and Education (SARE) Learning Center",
      "subtitle":
          "SARE offers several interactive tutorials on sustainable livestock farming. These tutorials cover topics such as grazing management, animal health, and marketing strategies for sustainable livestock products. The tutorials are free and self-paced.",
    },
    {
      "image": "assets/learn5.png",
      "title": "Livestock Conservancy",
      "subtitle":
          "The Livestock Conservancy offers several online resources for sustainable livestock farming, including webinars, online courses, and interactive tutorials. The resources cover topics such as breed conservation, genetic diversity, and sustainable livestock management practices. Some of the resources are free, while others require a fee or membership.",
    }
  ];
}

class Glossary {
  static final getData = [
    {
      "front": "Livestock",
      "back":
          "Refers to animals that are raised for food, fiber, or labor, such as cows, pigs, sheep, goats, and chickens"
    },
    {
      "front": "Feed",
      "back":
          "The food that is provided to livestock for their nutrition and growth. This can include hay, grains, and other plant-based materials."
    },
    {
      "front": "Grazing",
      "back":
          "The practice of allowing livestock to feed on grass or other vegetation in a pasture or range."
    },
    {
      "front": "Pasture",
      "back":
          "An area of land that is used for grazing livestock, typically consisting of grasses and other vegetation"
    },
    {
      "front": "Animal husbandry",
      "back": "The care, management, and breeding of livestock animals"
    },
    {
      "front": "Antibiotic",
      "back":
          "A medicine that is used to treat or prevent bacterial infections in livestock."
    },
    {
      "front": "Hormones",
      "back":
          "Chemicals that are used to promote growth and production in livestock animals.."
    },
    {
      "front": "Antibiotic",
      "back":
          "A medicine that is used to treat or prevent bacterial infections in livestock."
    },
    {
      "front": "Animal welfare",
      "back":
          "The ethical and humane treatment of animals in livestock farming, including their health, nutrition, and living conditions."
    },
    {
      "front": "Sustainable agriculture",
      "back":
          "The practice of using farming methods that are environmentally sound, socially responsible, and economically viable."
    },
    {
      "front": "Manure",
      "back": "Animal waste that is used as fertilizer in crop production."
    },
    {
      "front": "Meat processing",
      "back":
          "The transformation of livestock animals into meat products for human consumption, including slaughter, processing, and packaging.."
    },
    {
      "front": "Organic farming",
      "back":
          "A  method of farming that avoids the use of synthetic fertilizers, pesticides, and other chemicals, and relies on natural methods for pest control and soil fertility.."
    },
    {
      "front": "Rotation grazing",
      "back":
          "The practice of moving livestock between different grazing areas in a pasture or range, in order to promote healthy vegetation growth and reduce soil erosion."
    },
    {
      "front": "Vaccination",
      "back":
          "The process of giving livestock animals vaccines to protect them from infectious diseases."
    }
  ];
}
