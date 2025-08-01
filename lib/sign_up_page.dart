import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagesignup extends StatefulWidget {
  const Pagesignup({super.key});

  @override
  State<Pagesignup> createState() => _Page_sign_upState();
}

class _Page_sign_upState extends State<Pagesignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 10),
            Text("Create your account", style: TextStyle(fontSize: 15)),
            SizedBox(height: 20),
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

            SizedBox(height: 15),
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
                  child: Row(children: [Icon(Icons.mail), Text("     E-mail")]),
                ),
              ],
            ),
            SizedBox(height: 15),
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
            SizedBox(height: 15),
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
                    children: [
                      Icon(Icons.password),
                      Text("    Conform password "),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              height: 45,
              width: 300,
              child: Center(child: Text("Sign Up")),
            ),
            SizedBox(height: 15),
            Text("Or"),
            SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black12,
              ),
              height: 40,
              width: 300,
              child: Center(child: Text("Sign in with Google")),
            ),
            SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an acount?  "),
                Text("Sign in",style: TextStyle(color: Colors.purple),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
