import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegitableDropdown extends StatefulWidget {
  const VegitableDropdown({super.key});

  @override
  State<VegitableDropdown> createState() => _VegitableDropdownState();
}

class _VegitableDropdownState extends State<VegitableDropdown> {
  String _selectedItem = 'Tomato';

  final List<String> _options = ['Tomato', 'Carrot', 'Onion'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  _selectedItem == 'Tomato' ? Colors.red:Colors.purpleAccent  ,
      body: DropdownButton<String>(
        value: _selectedItem,
        items: _options.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                color: _selectedItem == 'Tomato' ? Colors.black : Colors.black,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            _selectedItem = newValue!;
          });
        },
      ),
    );
  }
}
