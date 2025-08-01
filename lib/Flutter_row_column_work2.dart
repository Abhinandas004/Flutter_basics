import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterRowColumnWork2 extends StatefulWidget {
  const FlutterRowColumnWork2({super.key});

  @override
  State<FlutterRowColumnWork2> createState() => _FlutterRowColumnWork2State();
}

class _FlutterRowColumnWork2State extends State<FlutterRowColumnWork2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purpleAccent,
            ),
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
