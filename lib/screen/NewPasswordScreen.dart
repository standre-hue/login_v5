import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,

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
                    Container(
                      width: 90,
                      height: 90,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(45))),
                      child: const Center(
                        child: Icon(LineAwesome.angular,
                            color: Colors.white, size: 50),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create New Password",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Your new password must be unique from those previously used",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text("Password",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove_red_eye)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  color:
                                      const Color.fromARGB(255, 112, 110, 110),
                                  fontWeight: FontWeight.bold),
                              hintText: "Enter your new password",
                              fillColor: Color.fromARGB(179, 235, 232, 232),
                            ),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text("Confirm Password",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove_red_eye)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              filled: true,
                              hintStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 112, 110, 110),
                                  fontWeight: FontWeight.bold),
                              hintText: "Confirm your password",
                              fillColor: Color.fromARGB(179, 235, 232, 232),
                            ),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          
                          const SizedBox(
                            height: 30,
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
                              onPressed: () {},
                              child: const SizedBox(
                                height: 60,
                                child: Center(
                                  child: Text("Reset Password",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                              )),
                          
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}