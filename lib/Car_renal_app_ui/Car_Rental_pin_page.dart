import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import 'Car_Rental_App_Ui.dart';
import 'Car_Summary_page.dart';
import 'Navigation_Car_Rental_app.dart';

class CarRentalPinPage extends StatefulWidget {
  const CarRentalPinPage({super.key});

  @override
  State<CarRentalPinPage> createState() => _CarRentalPinPageState();
}

class _CarRentalPinPageState extends State<CarRentalPinPage> {
  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // prevents closing by tapping outside
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, size: 80, color: Color(0xff162542)),
              SizedBox(height: 16),

              Text(
                "Booking Successful!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff162542),
                ),
                textAlign: TextAlign.center,
              ),
               SizedBox(height: 10),

               Text(
                "Your booking has been confirmed.\nHave a wonderful journey",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
               SizedBox(height: 24),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xff162542),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding:  EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyNavigationcar(),
                        ),
                      ),
                      child:  Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                   SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side:  BorderSide(color: Color(0xff162542)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding:  EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },

                      child:Text(
                        "Bookings",
                        style: TextStyle(color: Color(0xff162542)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
                                height: 55,
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
