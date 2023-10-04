import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_v5/screen/LoginScreen.dart';
import 'package:login_v5/screen/RegisterScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .4,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Image.asset("assets/images/one.png"),
              ),
              const Row(
                children: [
                  Icon(LineAwesome.angular,
                              color: Colors.blue, size: 50),
                  Text(
                    "Local",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Everything you need is in one place",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "lorem ipsum doler set amet wer tref palid lorem ipsum doler set amet wer tref palid lorem ipsum doler set amet wer tref palid lorem ipsum doler set amet wer tref palid ",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 8, // thickness
                              color: Colors.blue // color
                              ),
                          // border radius
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 60,
                    child: Center(
                      child: Text("Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, // thickness
                              color: Colors.blue // color
                              ),
                          // border radius
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
                  child: const SizedBox(
                    height: 60,
                    child: Center(
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
