import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Row_work extends StatefulWidget {
  const Row_work({super.key});

  @override
  State<Row_work> createState() => _Row_workState();
}

class _Row_workState extends State<Row_work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //main column
      body: Column(
        children: [
          Container(width: 1050, height: 60, color: Colors.red),
          SizedBox(height: 10),

          //main row
          Row(
            children: [
              // 1 col
              Column(
                children: [
                  Container(height: 60, width: 350, color: Colors.green),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(width: 55, height: 60, color: Colors.blue),
                      SizedBox(width: 5),
                      Container(width: 290, height: 60, color: Colors.red),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(height: 250, width: 350, color: Colors.green),
                  SizedBox(height: 5),
                  Container(height: 60, width: 350, color: Colors.blue),
                ],
              ),
              SizedBox(width: 5),
              // 2 nd column
              Column(
                children: [
                  Container(
                    width: 350,
                    height: 250,
                    color: Colors.purpleAccent,
                  ),
                  SizedBox(height: 5),
                  //2 nd column_row
                  Row(
                    children: [
                      Container(height: 100, width: 125, color: Colors.green),
                      SizedBox(width: 5),
                      //2nd column_2nd_row
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 220,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 5),
                              Container(
                                height: 65,
                                width: 220,
                                color: Colors.red,
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(height: 85, width: 350, color: Colors.green),
                ],
              ),
              SizedBox(width: 5),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 250,
                            width: 120,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Container(width: 170, height: 50, color: Colors.blue),
                          SizedBox(height: 5),
                          Container(width: 170, height: 195, color: Colors.red),
                          SizedBox(width: 5),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(height: 175, width: 300, color: Colors.green),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
