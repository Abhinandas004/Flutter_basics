import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Car_app_2nd_screen.dart';

class CarApp1stScreen extends StatefulWidget {
  const CarApp1stScreen({super.key});

  @override
  State<CarApp1stScreen> createState() => _CarApp1stScreenState();
}

class _CarApp1stScreenState extends State<CarApp1stScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds (instead of 28s)
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CarApp2ndScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF061531),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Center(
            child: Image.asset(
              "Assets/Car_1st_img_1.png", // <-- Use a PNG with transparent background
              height: 110,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),

          // App Name
          Text(
            "CAR QUICK",
            style: GoogleFonts.rubikDistressed(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 32,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(height: 20),

          // Loading Indicator
           CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ],
      ),
    );
  }
}
