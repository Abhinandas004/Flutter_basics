import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Navigation_Car_Rental_app.dart';

class CarUpdatedInbox extends StatefulWidget {
  const CarUpdatedInbox({super.key});

  @override
  State<CarUpdatedInbox> createState() => _CarUpdatedInboxState();
}

class _CarUpdatedInboxState extends State<CarUpdatedInbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xffFAFAFA),
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
        
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: Color(0xff162542),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text(
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
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 13,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 1,
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("Assets/Person_img4.jpg"),
                        backgroundColor: Colors.grey,
                      ),
                      title: const Text(
                        "Karthy Manuel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff162542),
                        ),
                      ),
                      subtitle: const Text(
                        "Great everything looks go...",
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: const Text(
                        "4 min ago",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
