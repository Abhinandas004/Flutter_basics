import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarApp1stScreen extends StatefulWidget {
  const CarApp1stScreen({super.key});

  @override
  State<CarApp1stScreen> createState() => _CarApp1stScreenState();
}

class _CarApp1stScreenState extends State<CarApp1stScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 914,
            width: 420,
            decoration: BoxDecoration(color: Color(0xff162542)),
            child: Container(
              height: 150,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
