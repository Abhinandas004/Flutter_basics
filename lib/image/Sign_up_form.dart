import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(width: 30),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 100),
              child: Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Sign in to Continue",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "enter name";
                  }
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: TextFormField(validator: (value) {
                if(value!.isEmpty || value == null){
                  return "Enter password";
                };
              },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 110),
            InkWell(
              onTap: () {
                if (formkey.currentState!.validate()) {
                  print("call function");
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  border: Border.all(color: Colors.black),
                ),
                height: 50,
                width: 200,
                child: Center(child: Text("Login")),
              ),
            ),
            SizedBox(height: 15),
            InkWell(onTap: () {}, child: Text("Forgotten Password?")),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 80),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
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
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
