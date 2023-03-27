import 'package:flutter/material.dart';
import 'package:greenlivestock/homePage.dart';
import 'package:greenlivestock/idealsPage.dart';
import 'package:greenlivestock/models/signUp.dart';
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

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
