import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:greenlivestock/models/login.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String name = '', email = '', password = '';
    bool validator() {
      if (formKey.currentState!.validate()) {
        return true;
      } else {
        return false;
      }
    }

    return WillPopScope(
      onWillPop: () => exit(0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Lottie.asset('assets/signup.json', animate: true, repeat: true),
              const Text(
                "Register Yourself",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                            validator: (value) {
                              name = value!.toString();
                              if (value.isEmpty) {
                                return 'Username cannot be empty';
                              } else if (value.length < 6) {
                                return 'Name must be at least 6 characters';
                              }
                              return null;
                            },
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
                                        strokeAlign:
                                            BorderSide.strokeAlignInside)))),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            validator: (value) {
                              email = value!.toString();
                              if (value.isEmpty) {
                                return 'Email cannot be empty';
                              } else if (!value.contains('@')) {
                                return 'Email must be valid';
                              }
                              return null;
                            },
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
                                        strokeAlign:
                                            BorderSide.strokeAlignInside)))),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            validator: (value) {
                              password = value!.toString();
                              if (value.isEmpty) {
                                return 'Password cannot be empty';
                              } else if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              } else if (!value.contains(RegExp(r'[A-Z]'))) {
                                return 'Password must contain at least one uppercase letter';
                              } else if (!value.contains(RegExp(r'[a-z]'))) {
                                return 'Password must contain at least one lowercase letter';
                              } else if (!value.contains(RegExp(r'[0-9]'))) {
                                return 'Password must contain at least one digit';
                              } else if (!value.contains(
                                  RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                                return 'Password must contain at least one special character';
                              }
                              return null;
                            },
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
                                        strokeAlign:
                                            BorderSide.strokeAlignInside)))),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black, elevation: 5),
                            onPressed: () => validator()
                                ? FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: email, password: password)
                                    .then((value) => FirebaseFirestore.instance
                                            .collection('users')
                                            .doc(FirebaseAuth
                                                .instance.currentUser!.uid)
                                            .set({
                                          'name': name,
                                          'email': email,
                                          'password': password,
                                        }))
                                : showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                          title: const Text("Error"),
                                          content: const Text(
                                              "Please fill all the fields"),
                                          actions: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                                child: const Text("Ok"))
                                          ],
                                        )),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, elevation: 5),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => LogIn()));
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
      ),
    );
  }
}
