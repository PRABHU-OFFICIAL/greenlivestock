import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenlivestock/models/login.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exit(0),
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 5,
                child: Lottie.asset('assets/signup.json',
                    animate: true, repeat: true),
              ),
            ),
            const Text(
              "Register Yourself",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.red,
                          ),
                          hintText: 'What do people call you?',
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.none,
                                  strokeAlign: BorderSide.strokeAlignInside)))),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.mail,
                            color: Colors.red,
                          ),
                          hintText: 'Can I mail you?',
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.none,
                                  strokeAlign: BorderSide.strokeAlignInside)))),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.password,
                            color: Colors.red,
                          ),
                          hintText: 'Don\'t share your secret?',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 1,
                                  style: BorderStyle.none,
                                  strokeAlign: BorderSide.strokeAlignInside)))),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black, elevation: 5),
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black, elevation: 5),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const LogIn()));
                    },
                    child: const Text(
                      "already have an account, Log In 😊",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 17),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
