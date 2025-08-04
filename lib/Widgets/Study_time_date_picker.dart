import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StudyTimeDatePicker extends StatefulWidget {
  const StudyTimeDatePicker({super.key});

  @override
  State<StudyTimeDatePicker> createState() => _StudyTimeDatePickerState();
}

class _StudyTimeDatePickerState extends State<StudyTimeDatePicker> {
  // date picker
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
        title: Text("Continue"),
        content: Text("Are you sure you want to continue?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("No"),
          ),
          TextButton(
            onPressed: () {
              // Exit code here
              Navigator.pop(context);
            },
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Card(
                  child: TextButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text("Date"),
                  ),
                ),
                Text(
                  formattedDate.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Row(
              children: [
                Card(
                  child: TextButton(
                    onPressed: () {
                      _selectTime(context);
                    },
                    child: Text("Time"),
                  ),
                ),
                Text(
                   formattedTime.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Submit"),
            ),
          ),SizedBox(height: 39,),
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(backgroundColor: Colors.black38,
                content: Text("Thank you for submitting!"),
                duration: Duration(seconds: 2),
              ),
            );
          }, child: Text("Continue"))
        ],

      ),
    );
  }
}
