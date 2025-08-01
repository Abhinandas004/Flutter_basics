import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image/Sign_up_form.dart';

class LoginImgForm extends StatefulWidget {
  const LoginImgForm({super.key});

  @override
  State<LoginImgForm> createState() => _LoginImgFormState();
}

class _LoginImgFormState extends State<LoginImgForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.black12,
                image: DecorationImage(
                  image: AssetImage(
                    "Assets/8751221cc597fd604e6426bb3535ca3b.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Hello!",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Text(
              "Welcome back! Access your account seamlessly by entering your username or email and password in the fields below.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpForm();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    child: Center(
                      child: Text("Login", style: TextStyle(fontSize: 20)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 70),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 150,
                  child: Center(
                    child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Text("Or via Social Media"),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 80),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/6/6c/Facebook_Logo_2023.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Google_Plus_logo_%282013-2015%29.svg/1047px-Google_Plus_logo_%282013-2015%29.svg.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/LinkedIn_icon.svg/1024px-LinkedIn_icon.svg.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
