import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addimg extends StatefulWidget {
  const Addimg({super.key});

  @override
  State<Addimg> createState() => _AddimgState();
}

class _AddimgState extends State<Addimg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Asset image",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                image: AssetImage(
                  "Assets/How-to-grow-and-care-for-Cape-Marguerite-f.jpg",
                ),fit: BoxFit.cover
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Network image",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoIo2u-gdwlXqXZMojKPLaqKCc-9a8mfykxw&s",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
