import 'package:flutter/material.dart';
import 'package:greenlivestock/homePage.dart';
import 'package:greenlivestock/idealsPage.dart';
import 'package:greenlivestock/trackerPage.dart';
import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  static int value = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: DateTime.now().hour < 12
                ? const Text('Good Morning')
                : DateTime.now().hour < 17
                    ? const Text('Good Afternoon')
                    : const Text('Good Evening'),
            centerTitle: true,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: value == 0
              ? const Center(
                  child: HomePage(),
                )
              : value == 1
                  ? const Center(
                      child: IdealsPage(),
                    )
                  : Center(
                      child: LiveGraphScreen(),
                    ),
          drawer: const MyDrawer(),
          bottomNavigationBar: BottomNavigationBar(
            unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold),
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold),
            currentIndex: value,
            onTap: (int index) {
              setState(() {
                value = index;
              });
            },
            selectedIconTheme: const IconThemeData(color: Colors.red),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tips_and_updates),
                label: 'Ideals',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.art_track),
                label: 'Tracker',
              ),
            ],
          )),
    );
  }
}
