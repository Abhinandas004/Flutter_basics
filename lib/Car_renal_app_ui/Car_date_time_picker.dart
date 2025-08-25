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
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();

  String? formattedStartDate;
  String? formattedEndDate;
  String? formattedStartTime;
  String? formattedEndTime;

  TextEditingController deliveryController = TextEditingController(
      text: "Bangalore International Airport, Kempegowda I...");
  TextEditingController returnController =
  TextEditingController(text: "MG Road Metro Station, Bengaluru...");

  Future<void> _selectDate(BuildContext context, bool isStart) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStart ? startDate : endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        if (isStart) {
          startDate = picked;
          formattedStartDate = DateFormat('dd MMM yy').format(startDate);
        } else {
          endDate = picked;
          formattedEndDate = DateFormat('dd MMM yy').format(endDate);
        }
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStart) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStart ? startTime : endTime,
    );

    if (picked != null) {
      final now = DateTime.now();
      final dateTime =
      DateTime(now.year, now.month, now.day, picked.hour, picked.minute);

      setState(() {
        if (isStart) {
          startTime = picked;
          formattedStartTime = DateFormat('HH:mm').format(dateTime);
        } else {
          endTime = picked;
          formattedEndTime = DateFormat('HH:mm').format(dateTime);
        }
      });
    }
  }

  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Booking Details"),
        content: Text(
          "Start: ${formattedStartDate ?? "N/A"} at ${formattedStartTime ?? "N/A"}\n"
              "End: ${formattedEndDate ?? "N/A"} at ${formattedEndTime ?? "N/A"}\n\n"
              "Delivery: ${deliveryController.text}\n"
              "Return: ${returnController.text}\n\n"
              "Do you want to proceed?",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CarPaymentsMethodsPage(),
                ),
              );
            },
            child: const Text("Confirm"),
          ),
        ],
      ),
    );
  }

  Widget buildInputBox({required Widget child}) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(color: const Color(0xff162542)),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top appbar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CarRentPage()),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.arrow_back_ios, size: 16),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text(
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

          // date pickers
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Starting Date", style: TextStyle(color: Color(0xff162542))),
                Text("Ending Date", style: TextStyle(color: Color(0xff162542))),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => _selectDate(context, true),
                          icon: const Icon(Icons.calendar_month_outlined),
                        ),
                        Text(
                          formattedStartDate ?? "Pick date",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => _selectDate(context, false),
                          icon: const Icon(Icons.calendar_month_outlined),
                        ),
                        Text(
                          formattedEndDate ?? "Pick date",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // time pickers
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Starting Time", style: TextStyle(color: Color(0xff162542))),
                Text("End Time", style: TextStyle(color: Color(0xff162542))),
              ],
            ),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formattedStartTime ?? "Pick time",
                          style: const TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () => _selectTime(context, true),
                          child: const Icon(Icons.keyboard_arrow_down,
                              color: Color(0xff162542)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildInputBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formattedEndTime ?? "Pick time",
                          style: const TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () => _selectTime(context, false),
                          child: const Icon(Icons.keyboard_arrow_down,
                              color: Color(0xff162542)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Delivery Location
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            const Text("Delivery Location", style: TextStyle(color: Color(0xff162542))),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: buildInputBox(
              child: Row(
                children: [
                  const Icon(Icons.location_on_rounded, color: Color(0xff162542)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: deliveryController,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Return Location
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            const Text("Return Location", style: TextStyle(color: Color(0xff162542))),
          ),
          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: buildInputBox(
              child: Row(
                children: [
                  const Icon(Icons.location_on_rounded, color: Color(0xff162542)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: returnController,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          // continue button
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
                    border: Border.all(color: const Color(0xff162542)),
                    color: const Color(0xff162542),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Center(
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
