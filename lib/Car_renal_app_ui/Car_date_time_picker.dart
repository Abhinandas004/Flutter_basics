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

  TimeOfDay selectedTime = TimeOfDay.now();
  String? formattedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        formattedDate = DateFormat('dd MM yy').format(selectedDate);
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null) {
      final now = DateTime.now();
      final dateTime = DateTime(
        now.year,
        now.month,
        now.day,
        picked.hour,
        picked.minute,
      );

      setState(() {
        selectedTime = picked;
        formattedTime = DateFormat('HH:mm').format(dateTime);
      });
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

  Widget buildInputBox({required Widget child}) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(color: Color(0xff162542)),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CarRentPage()),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,

                      ),
                      child: Icon(Icons.arrow_back_ios, size: 16),
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

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Starting Date", style: TextStyle(color: Color(0xff162542))),
                Text("Ending Date", style: TextStyle(color: Color(0xff162542))),
              ],
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => _selectDate(context),
                          icon: Icon(Icons.calendar_month_outlined),
                        ),
                        Text(
                          formattedDate ?? "Pick date",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => _selectDate(context),
                          icon: Icon(Icons.calendar_month_outlined),
                        ),
                        Text(
                          formattedDate ?? "Pick date",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Starting Time", style: TextStyle(color: Color(0xff162542))),
                Text("End Time", style: TextStyle(color: Color(0xff162542))),
              ],
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formattedTime ?? "Pick time",
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () => _selectTime(context),
                          child: Icon(Icons.keyboard_arrow_down, color: Color(0xff162542)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formattedTime ?? "Pick time",
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () => _selectTime(context),
                          child: Icon(Icons.keyboard_arrow_down, color: Color(0xff162542)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Delivery Location", style: TextStyle(color: Color(0xff162542))),
          ),
          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildInputBox(
              child: Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Color(0xff162542)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Bangalore International Airport, Kempegowda I...",
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Return Location", style: TextStyle(color: Color(0xff162542))),
          ),
          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildInputBox(
              child: Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Color(0xff162542)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "MG Road Metro Station, MG Road, Bengaluru, K...",
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Spacer(),

          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade200)),
            ),
            child: Center(
              child: InkWell(
                onTap: () => showMyAlert(context),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.85,
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
    );
  }
}
