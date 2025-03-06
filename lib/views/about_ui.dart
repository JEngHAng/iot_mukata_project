import 'package:flutter/material.dart';

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon/saulogo.png',
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05
              ),
              Text(
                "Tech SAU BUFFEY",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01
              ),
              Text(
                "แอปพลิเคชันร้านหมูกะทะ",
                style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 130, 130, 130),
                ),
              ),
              Text(
                "เพื่อคนไทย",
                style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 130, 130, 130),
                ),
              ),
              Text(
                "โดยเด็กไทย",
                style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 130, 130, 130),
                ),
              ),
              Text(
                "สนใจแอปพลิเคชันติดต่อ",
                style: TextStyle(
                  fontSize: 17,
                  color: const Color.fromARGB(255, 130, 130, 130),
                ),
              ),
              Text(
                "เด็กไอที SAU",
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 130, 130, 130),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025
              ),
              Image.asset(
                'assets/icon/sauqr.png',
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ]
          ),
        ),
      ),
    );
  }
}
