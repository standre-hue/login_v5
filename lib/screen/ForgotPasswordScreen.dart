import 'package:flutter/material.dart';
import 'package:login_v5/screen/OTPScreen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          Image.asset("assets/images/pwd.png"),
          const Text("Forgot password?",
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
          const Text("Email",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50.0),
              ),
              filled: true,
              hintStyle: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 112, 110, 110),
                  fontWeight: FontWeight.bold),
              hintText: "Enter your email",
              fillColor: Color.fromARGB(179, 235, 232, 232),
            ),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),const SizedBox(height: 20 ,),
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
                    builder: (context) => const OTPScreen()));
              },
              child: const SizedBox(
                height: 60,
                child: Center(
                  child: Text("Send Code",
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
