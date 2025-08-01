import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rows_columns extends StatefulWidget {
  const Rows_columns({super.key});

  @override
  State<Rows_columns> createState() => _Rows_columnsState();
}

class _Rows_columnsState extends State<Rows_columns> {
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
              Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 300,
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
