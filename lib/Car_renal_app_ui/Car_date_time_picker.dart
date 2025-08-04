import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarDateTimePicker extends StatefulWidget {
  const CarDateTimePicker({super.key});

  @override
  State<CarDateTimePicker> createState() => _CarDateTimePickerState();
}

class _CarDateTimePickerState extends State<CarDateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(onTap: () {
            Navigator.pop(context);
          },
            child: Padding(
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
                    "Date & Time",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff162542),
                    ),
                  ),
                ],
              ),
            ),
          ),SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text("Starting Date",style: TextStyle(color: Color(0xff162542)),),
              ),Text("Ending Date",style: TextStyle(color: Color(0xff162542)),)
            ],
          )
        ],
      ),
    );
  }
}
