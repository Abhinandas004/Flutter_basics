import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import 'Car_Summary_page.dart';

class CarRentalPinPage extends StatefulWidget {
  const CarRentalPinPage({super.key});

  @override
  State<CarRentalPinPage> createState() => _CarRentalPinPageState();
}

class _CarRentalPinPageState extends State<CarRentalPinPage> {
  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle_sharp, size: 80),
            SizedBox(height: 10),
            Text(
              "Booking Successful",
              style: TextStyle(fontSize: 20, color: Color(0xff162542)),
            ),SizedBox(height: 20,),
            Text("Your Booking has confirmed."),
            Text(" have a wonderful journey"),
            Container()
          ],
        ),

        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("No"),
          ),
          TextButton(
            onPressed: () {
              // Exit code here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarRentalPinPage()),
              );
            },
            child: Text("Pay Now"),
          ),
        ],
      ),
    );
  }

  final TextEditingController pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarSummaryPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.arrow_back_ios, size: 18),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Enter Your Pin",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff162542),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 230),
          Text("Enter your PIN to confirm Payment"),

          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Pinput(
                controller: pinController,
                length: 4, // Number of digits
                showCursor: true,
                onCompleted: (pin) {
                  debugPrint('Entered PIN: $pin');
                },
              ),
              SizedBox(height: 400),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 75,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                showMyAlert(context);
                              },
                              child: Container(
                                height: 50,
                                width: 340,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff162542)),
                                  color: Color(0xff162542),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Center(
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
