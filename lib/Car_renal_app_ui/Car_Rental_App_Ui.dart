import 'package:flutter/material.dart';

import 'Car_rent_page.dart';

class CarRentalAppUi extends StatefulWidget {
  const CarRentalAppUi({super.key});

  @override
  State<CarRentalAppUi> createState() => _CarRentalAppUiState();
}

class _CarRentalAppUiState extends State<CarRentalAppUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi Karthy 👋 ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                  ),
                ),
                Spacer(),
                Icon(Icons.notifications_none, color: Color(0xff162542)),
                SizedBox(width: 25),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(
                          "Assets/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "Let's find your favorite car here",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 9.75, right: 9.75),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      fillColor: Colors.white,
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xff162542),
                      ),
                      suffixIcon: Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 7),
                child: Container(
                  height: 50,
                  width: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff162542),
                  ),
                  child: Icon(Icons.tune_sharp, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 140,
              width: 355,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("Assets/Banner_car_rental.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Brands",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 2, left: 20),
                child: Text("See all", style: TextStyle(fontSize: 16)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.navigate_next),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 90,
                  width: 78,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("Assets/Benz_logo.jpg"),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Mercedes")],
                  ),
                ),
              ),
              SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 99,
                  width: 78,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("Assets/BMW_Logo.png"),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("BMW")],
                  ),
                ),
              ),
              SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 99,
                  width: 78,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("Assets/Porshe_logo.jpg"),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Porshe")],
                  ),
                ),
              ),
              SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 99,
                  width: 78,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage("Assets/Renault_logo.jpeg"),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Renault")],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Popular Cars",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff162542),
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          InkWell(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CarRentPage()),
            );
          },
            child: Container(
              width: 355,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("Assets/benz_pic.webp")),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Mercedes S-class",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Icon(Icons.star_outlined, color: Colors.yellow),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "4.8",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
