import 'package:flutter/material.dart';

class Radiowork extends StatefulWidget {
  const Radiowork({super.key});

  @override
  State<Radiowork> createState() => _RadioworkState();
}

class _RadioworkState extends State<Radiowork> {
  int selectedValue = 1;

  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Male"),
            leading: Radio(
              value: 1,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),

          ListTile(
            title: Text('Femail'),
            leading: Radio(
              value: 2,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Others'),
            leading: Radio(
              value: 3,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text("I agree"),
            ],
          )
        ],
      ),
    );
  }
}
