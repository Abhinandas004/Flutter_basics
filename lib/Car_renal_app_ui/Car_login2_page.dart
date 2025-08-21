import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'Navigation_Car_Rental_app.dart';

class CarLogin2Page extends StatefulWidget {
  const CarLogin2Page({super.key});

  @override
  State<CarLogin2Page> createState() => _CarLogin2PageState();
}

class _CarLogin2PageState extends State<CarLogin2Page> {
  final TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(child: Icon(Icons.directions_car_filled, size: 80)),
            ),
          ),
          Text(
            "Verify Code",
            style: TextStyle(
              color: Color(0xff162542),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Enter your verification from your phone \n            number that we've sent.",
            style: TextStyle(color: Color(0xff464646), fontSize: 15),
          ),
          SizedBox(height: 20),
          Pinput(
            controller: pinController,
            length: 4, // Number of digits
            showCursor: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the PIN';
              } else if (value.length < 4) {
                return 'PIN must be 4 digits';
              } else if (value != "1234") {
                // <-- Example correct PIN
                return 'Invalid PIN';
              }
              return null; // ✅ Valid
            },
            onCompleted: (pin) {
              debugPrint('Entered PIN: $pin');
            },
          ),SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("If you didn't receive a code?",style: TextStyle(fontSize: 15),),
              Text("  Resend", style: TextStyle(color: Color(0xff162542),fontSize: 16)),
            ],
          ),SizedBox(height: 360,),
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyNavigationcar(),));
          },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff162542),
              ),
              child: Center(
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
