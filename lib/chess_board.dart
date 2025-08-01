import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chess_board extends StatefulWidget {
  const Chess_board({super.key});

  @override
  State<Chess_board> createState() => _Chess_boardState();
}

class _Chess_boardState extends State<Chess_board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
              Container(height: 50, width: 50, color: Colors.white),
              Container(height: 50, width: 50, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
