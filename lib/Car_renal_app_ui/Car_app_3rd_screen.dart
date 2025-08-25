import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Car_login1_page.dart';
import 'Navigation_Car_Rental_app.dart';

class CarApp3rdScreen extends StatefulWidget {
  const CarApp3rdScreen({super.key});

  @override
  State<CarApp3rdScreen> createState() => _CarApp3rdScreenState();
}

class _CarApp3rdScreenState extends State<CarApp3rdScreen> {
  // 🔹 Store multiple selected brands
  Set<String> selectedCars = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
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
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Which brand of car \nyou prefer ?",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xff141414),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // BMW + Porsche
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCarCard("BMW", "Assets/BMW_Logo.png"),
                buildCarCard("Porsche", "Assets/Porshe_logo.jpg"),
              ],
            ),
            SizedBox(height: 10),

            // Benz + Renault
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCarCard("Benz", "Assets/Benz_logo.jpg"),
                buildCarCard("Renault", "Assets/Renault_logo.jpeg"),
              ],
            ),
            SizedBox(height: 10),

            // Lexus + Ferrari
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCarCard("Lexus", "Assets/Lexus_logo.jpeg"),
                buildCarCard("Ferrari", "Assets/Ferrari_logo.jpeg"),
              ],
            ),

            SizedBox(height: 60),

            // Finish button
            InkWell(
              onTap: selectedCars.isEmpty
                  ? null
                  : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarLogin1Page(),
                  ),
                );
              },
              child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectedCars.isEmpty
                      ? Colors.grey
                      : const Color(0xff162542),
                ),
                child: Center(
                  child: Text(
                    "Finish",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Custom widget for each card
  Widget buildCarCard(String brand, String imagePath) {
    final isSelected = selectedCars.contains(brand);

    return InkWell(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedCars.remove(brand); // unselect if already selected
          } else {
            selectedCars.add(brand); // select multiple
          }
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: 3,
          ),
        ),
        child: Container(
          height: 170,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  brand,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                    isSelected ? Colors.blue : const Color(0xff162542),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
