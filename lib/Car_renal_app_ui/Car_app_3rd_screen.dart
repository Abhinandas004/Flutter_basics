import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Car_login1_page.dart';

class CarApp3rdScreen extends StatefulWidget {
  const CarApp3rdScreen({super.key});

  @override
  State<CarApp3rdScreen> createState() => _CarApp3rdScreenState();
}

class _CarApp3rdScreenState extends State<CarApp3rdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CarLogin1Page(),
                        ),
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(color: Color(0xff162542), fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Which brand of car \nyou prefer ?",
                    style: TextStyle(fontSize: 35, color: Color(0xff141414),fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
