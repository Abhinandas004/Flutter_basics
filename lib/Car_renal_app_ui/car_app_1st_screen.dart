import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Car_app_2nd_screen.dart';
import 'Car_app_3rd_screen.dart';

class CarApp1stScreen extends StatefulWidget {
  const CarApp1stScreen({super.key});

  @override
  State<CarApp1stScreen> createState() => _CarApp1stScreenState();
}

class _CarApp1stScreenState extends State<CarApp1stScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CarApp2ndScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff162542),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(height: 110,width: 170,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/Screenshot 2025-08-22 122421.png"))),
          ),
          ),
          Text(
            "CAR QUICK",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
              letterSpacing: 3, // optional for spacing effect
            ),
          ),
        ],
      ),
    );
  }
}
