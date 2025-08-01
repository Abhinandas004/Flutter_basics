import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagelogin extends StatefulWidget {
  const Pagelogin({super.key});

  @override
  State<Pagelogin> createState() => _PageloginState();
}

class _PageloginState extends State<Pagelogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "WELCOME BACK",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Enter your credential to login",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 100),
          //username_container
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [Icon(Icons.person), Text("     User name")],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          //2nd container for _pass
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [Icon(Icons.password), Text("     Password")],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.purple,
            ),
            height: 50,
            width: 300,
            child: Center(child: Text("Login")),
          ),
          SizedBox(height: 100),
          Text("Forgotten password?", style: TextStyle(color: Colors.purple)),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account? "),
              Text("Sign Up", style: TextStyle(color: Colors.purple)),
            ],
          ),
        ],
      ),
    );
  }
}
