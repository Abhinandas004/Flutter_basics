import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String _selectedItem = 'RED';

  final List<String> _options = ['RED', 'GREEN', 'BLUE', 'YELLOW'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropdownButton Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: _selectedItem,
              items: _options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            // Text('Selected: $_selectedItem'),
            // Container(
            //   height: 10,
            //   width: 10,
            //   color: _selectedItem == 'RED'
            //       ? Colors.red
            //       : _selectedItem == 'GREEN'
            //       ? Colors.green
            //       : _selectedItem == 'BLUE'
            //       ? Colors.blue
            //       : Colors.yellow,
            // ),
          ],
        ),
      ),
    );
  }
}
