import 'package:flutter/material.dart';

import '../Car_Updated_Inbox.dart';
import 'Car_Rental_App_Ui.dart';
import 'Car_Rental_App_Wishlist.dart';
import 'Car_Rental_Inbox.dart';
import 'Car_Rental_Profile.dart';

class MyNavigationcar extends StatefulWidget {
  MyNavigationcar({Key? key}) : super(key: key);

  @override
  _MyNavigationcarState createState() => _MyNavigationcarState();
}

class _MyNavigationcarState extends State<MyNavigationcar> {
  int _selectedIndex = 0;

  static const List<dynamic> _widgetOptions = [
    CarRentalAppUi(),
    Wishlistpage(),
    CarUpdatedInbox(),
    CarRentalProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor:Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Wishlist',
                backgroundColor:Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                label: 'Inbox',
                backgroundColor:Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor:Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: 26,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}