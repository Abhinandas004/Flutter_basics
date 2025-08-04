import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarUpdatedInbox extends StatefulWidget {
  const CarUpdatedInbox({super.key});

  @override
  State<CarUpdatedInbox> createState() => _CarUpdatedInboxState();
}

class _CarUpdatedInboxState extends State<CarUpdatedInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Row(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Color(0xff162542),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "Inbox",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff162542),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("Assets/Person_img4.jpg"),
                    ),
                    title: Text(
                      "Karthy Manuel",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Great everything looks go..."),
                    trailing: Text("4 min ago"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
