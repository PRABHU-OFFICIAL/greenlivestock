import 'package:flutter/material.dart';
import 'package:greenlivestock/models/signUp.dart';
import 'package:lottie/lottie.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    validator() {
      if (formKey.currentState!.validate()) {
        print("validated");
      } else {
        print("not validated");
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Lottie.asset('assets/login.json', animate: true, repeat: true),
          const Text(
            "Login",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
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
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
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
                          if (value == null || value.isEmpty) {
                            return 'Password cannot be empty';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          } else if (!value.contains(RegExp(r'[A-Z]'))) {
                            return 'Password must contain at least one uppercase letter';
                          } else if (!value.contains(RegExp(r'[a-z]'))) {
                            return 'Password must contain at least one lowercase letter';
                          } else if (!value.contains(RegExp(r'[0-9]'))) {
                            return 'Password must contain at least one digit';
                          } else if (!value
                              .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
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
                        onPressed: () {
                          return validator();
                        },
                        child: const Text(
                          "Login",
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
                      },
                      child: const Text(
                        "don/'t have an account, Sign Up 😊",
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
    );
  }
}
