import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudyTextform extends StatefulWidget {
  const StudyTextform({super.key});

  @override
  State<StudyTextform> createState() => _StudyTextformState();
}

class _StudyTextformState extends State<StudyTextform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.blue.shade50,
            filled: true,
            hintText: "Enter your name",
            prefixIcon: Icon(Icons.ac_unit),
            suffixIcon: Icon(Icons.abc_sharp),
            border: OutlineInputBorder(),

          ),
        ),
      ),
    );
  }
}
