import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Car_Payments_methods_page.dart';
import 'Car_rent_page.dart';

class CarDateTimePicker extends StatefulWidget {
  const CarDateTimePicker({super.key});

  @override
  State<CarDateTimePicker> createState() => _CarDateTimePickerState();
}

class _CarDateTimePickerState extends State<CarDateTimePicker> {
  DateTime selectedDate = DateTime.now();
  String? formattedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      // Format date as dd MM yy
      setState(() {
        formattedDate = DateFormat('dd MM yy').format(selectedDate);
      });

      print("Selected Date: $formattedDate");
    }
  }

  // time picker
  TimeOfDay selectedTime = TimeOfDay.now();
  String? formattedTime;
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      selectedTime = picked;

      // Convert TimeOfDay to DateTime
      final now = DateTime.now();
      final dateTime = DateTime(
        now.year,
        now.month,
        now.day,
        selectedTime.hour,
        selectedTime.minute,
      );

      // Format using intl
      setState(() {
        formattedTime = DateFormat('HH:mm').format(dateTime);
      });

      print("Selected Time: $formattedTime");
    }
  }

  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirm Booking Details"),
        content: Text(
          "Do you want to proceed with the selected date, time, and locations?",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              // Exit code here
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarPaymentsMethodsPage(),
                ),
              );
            },
            child: Text("Confirm"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => CarRentPage(),));
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.arrow_back_ios, size: 18),
                    ),
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
          ),
          SizedBox(height: 0),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Starting Date",
                style: TextStyle(color: Color(0xff162542)),
              ),
              Text(
                "Ending Date",
                style: TextStyle(color: Color(0xff162542)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff162542)),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                      ),
                      Text(
                        formattedDate.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff162542)),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: Icon(Icons.calendar_month_outlined),
                      ),
                      Text(
                        formattedDate.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Starting Time",
                style: TextStyle(color: Color(0xff162542)),
              ),
              Text(
                "End Time",
                style: TextStyle(color: Color(0xff162542)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff162542)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          formattedTime.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: InkWell(
                          onTap: () {
                            _selectTime(context);
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff162542),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff162542)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          formattedTime.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: InkWell(
                          onTap: () {
                            _selectTime(context);
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff162542),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Delivery Location",
                  style: TextStyle(color: Color(0xff162542)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff162542)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.location_on_rounded,
                          color: Color(0xff162542),
                        ),
                      ),
                      Text(
                        "Bangalore International Airport, Kempegowda I...",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Return Location",
                  style: TextStyle(color: Color(0xff162542)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 40,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Color(0xff162542)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.location_on_rounded,
                      color: Color(0xff162542),
                    ),
                  ),
                  Text(
                    "MG Road Metro Station, MG Road, Bengaluru, K...",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 75,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: Colors.grey.shade200)),
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            showMyAlert(context);
                          },
                          child: Container(
                            height: 50,
                            width: 340,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff162542)),
                              color: Color(0xff162542),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
