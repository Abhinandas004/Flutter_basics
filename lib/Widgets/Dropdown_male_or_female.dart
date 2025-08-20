import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownMaleOrFemale extends StatefulWidget {
  const DropdownMaleOrFemale({super.key});

  @override
  State<DropdownMaleOrFemale> createState() => _DropdownMaleOrFemaleState();
}

class _DropdownMaleOrFemaleState extends State<DropdownMaleOrFemale> {
  String _selectedItem = 'Male';

  final List<String> _options = ['Male', 'Female', 'Others'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton<String>(
            value: _selectedItem,
            items: _options.map((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue!;
              });
            },
          ),
          SizedBox(height: 10),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: _selectedItem == "Male"
                    ? AssetImage("Assets/Person_img4.jpg")
                    : _selectedItem == "Female"
                    ? AssetImage("Assets/Person_img2.jpg")
                    : AssetImage("blank-white-background-xbsfzsltjksfompa.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
