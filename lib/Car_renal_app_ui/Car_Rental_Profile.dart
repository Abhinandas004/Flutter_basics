import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarRentalProfile extends StatefulWidget {
  const CarRentalProfile({super.key});

  @override
  State<CarRentalProfile> createState() => _CarRentalProfileState();
}

class _CarRentalProfileState extends State<CarRentalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.arrow_back_ios, size: 18),
                ),
                SizedBox(width: 15),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff162542),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("Assets/Profile_img.jpg"),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Column(
            children: [
              Text(
                "Karthy Manuel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 90,
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          image: DecorationImage(
                            image: AssetImage("Assets/new_lisense_img.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "License",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 110,
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              image: DecorationImage(
                                image: AssetImage(
                                  "Assets/Updated_passport_image.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Passport",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 110,
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              image: DecorationImage(
                                image: AssetImage(
                                  "Assets/Profile_icon_carRental.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Preferences",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff162542),
                  ),
                ),
              ),
            ],
          ),SizedBox(height: 10,),
          Column(
            children: [
              Container(
                height: 60,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(backgroundImage: AssetImage("Assets/New_img_location.jpeg"),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Current Location",style:TextStyle(fontSize: 17,color: Color(0xff162542)) ,),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                  ],
                ),
              ),SizedBox(height: 10,),
              Container(
                height: 60,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(backgroundImage: AssetImage("Assets/Booking_updated_icon.png"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("My Bookings      ",style:TextStyle(fontSize: 17,color: Color(0xff162542)) ,),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              ),SizedBox(height: 10,),
              Container(
                height: 60,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(backgroundImage: AssetImage("Assets/Setting_updated_icon.png"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Settings              ",style:TextStyle(fontSize: 17,color: Color(0xff162542)) ,),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              ),SizedBox(height: 10,),
              Container(
                height: 60,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(backgroundImage: AssetImage("Assets/ChatGPT Image Aug 7, 2025, 09_32_03 PM.png"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Policies               ",style:TextStyle(fontSize: 17,color: Color(0xff162542)) ,),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              ),SizedBox(height: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
