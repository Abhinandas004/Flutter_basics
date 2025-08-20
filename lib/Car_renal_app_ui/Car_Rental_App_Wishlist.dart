import 'package:flutter/material.dart';

import 'Car_Rental_App_Ui.dart';
import 'Navigation_Car_Rental_app.dart';

class Wishlistpage extends StatefulWidget {
  const Wishlistpage({super.key});

  @override
  State<Wishlistpage> createState() => _WishlistpageState();
}

class _WishlistpageState extends State<Wishlistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyNavigationcar(),
                      ),
                    );
                  },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),child: Icon(Icons.arrow_back_ios, size: 18),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Wishlist",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Color(0xff162542)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 220,
              width: 385,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("Assets/Wishlist_eg2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),child: Padding(
                padding: const EdgeInsets.only(top: 160,),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Lamborghini",style: TextStyle(fontSize: 17,color: Colors.white),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("4 Saved",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              height: 220,
              width: 385,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("Assets/Wishlist_eg3.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 160,),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("BMW",style: TextStyle(fontSize: 17,color: Colors.white),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("6 Saved",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
