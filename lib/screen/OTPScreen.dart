import 'package:flutter/material.dart';

import 'NewPasswordScreen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.chevron_left, size: 40),
              )
            ],
          ),
          Image.asset("assets/images/otp.png"),
          const Text("OTP Verification",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Don't worry! it occurs,Please enter the email address linked to your account",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 60,
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 112, 110, 110),
                        fontWeight: FontWeight.bold),
                    hintText: "",
                    fillColor: Color.fromARGB(179, 235, 232, 232),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
                        const SizedBox(
                height: 60,
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 112, 110, 110),
                        fontWeight: FontWeight.bold),
                    hintText: "",
                    fillColor: Color.fromARGB(179, 235, 232, 232),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
                        const SizedBox(
                height: 60,
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 112, 110, 110),
                        fontWeight: FontWeight.bold),
                    hintText: "",
                    fillColor: Color.fromARGB(179, 235, 232, 232),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
                        const SizedBox(
                height: 60,
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 112, 110, 110),
                        fontWeight: FontWeight.bold),
                    hintText: "",
                    fillColor: Color.fromARGB(179, 235, 232, 232),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
                        const SizedBox(
                height: 60,
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 112, 110, 110),
                        fontWeight: FontWeight.bold),
                    hintText: "",
                    fillColor: Color.fromARGB(179, 235, 232, 232),
                  ),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
          ],),

          const SizedBox(
            height: 20,
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
                    builder: (context) => const NewPasswordScreen()));
              },
              child: const SizedBox(
                height: 60,
                child: Center(
                  child: Text("Verify",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
              ))
        ]),
      ),
    ));
  }
}