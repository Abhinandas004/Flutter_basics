import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Study_buttons extends StatefulWidget {
  const Study_buttons({super.key});

  @override
  State<Study_buttons> createState() => _Study_buttonsState();
}

class _Study_buttonsState extends State<Study_buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text("Click")),
            IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
            ElevatedButton(onPressed: () {}, child: Text("Submit")),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink,
                  ),
                  height: 50,
                  width: 200,
                  child: Center(child: Text("Login")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
