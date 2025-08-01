import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container_work extends StatefulWidget {
  const Container_work({super.key});

  @override
  State<Container_work> createState() => _Container_workState();
}

class _Container_workState extends State<Container_work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(height: 300, width: 500, color: Colors.purpleAccent),
            ],
          ),
          Row(
            children: [
              Container(height: 200, width: 250, color: Colors.green),
              Column(
                children: [
                  Container(height: 70,width: 250,color: Colors.blueAccent,),
                  Container(height: 130,width: 250,color: Colors.red,),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(height: 100,width: 500,color: Colors.green,),
            ],
          )

        ],
      ),
    );
  }
}
