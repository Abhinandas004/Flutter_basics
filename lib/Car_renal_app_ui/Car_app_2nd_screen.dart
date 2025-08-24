import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Car_app_3rd_screen.dart';

class CarApp2ndScreen extends StatefulWidget {
  const CarApp2ndScreen({super.key});

  @override
  State<CarApp2ndScreen> createState() => _CarApp2ndScreenState();
}

class _CarApp2ndScreenState extends State<CarApp2ndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/page2nd_img.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 620),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text(
                    "Let's find your \nfavorite car here!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 6.0,
                          color: Colors.black.withOpacity(0.6),
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Text(
                    "Rent your ride in a flash! Quick,easy and \nready for adventure.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),SizedBox(height: 40,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarApp3rdScreen()),
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color(0xff162542),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
