import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarLogin1Page extends StatefulWidget {
  const CarLogin1Page({super.key});

  @override
  State<CarLogin1Page> createState() => _CarLogin1PageState();
}

class _CarLogin1PageState extends State<CarLogin1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: 355,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/Login_page_img.jpg"),fit:BoxFit.cover

              ),
            ),
          ),
        ],
      ),
    );
  }
}
