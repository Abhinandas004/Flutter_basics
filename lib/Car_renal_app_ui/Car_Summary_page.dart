import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Car_Payments_methods_page.dart';
import 'Car_Rental_pin_page.dart';

class CarSummaryPage extends StatefulWidget {
  const CarSummaryPage({super.key});

  @override
  State<CarSummaryPage> createState() => _CarSummaryPageState();
}

class _CarSummaryPageState extends State<CarSummaryPage> {
  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirm Payment"),
        content: Text(
          "Do you want to complete the payment for your booking now?",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Back"),
          ),
          TextButton(
            onPressed: () {
              // Exit code here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarRentalPinPage()),
              );
            },
            child: Text("Pay Now"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarPaymentsMethodsPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.arrow_back_ios, size: 18),
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  "Summary",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff162542),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 100,
              width: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("Assets/benz_pic.webp"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Mercedes S-class",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff162542),
                          ),
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            "₹ 60,000",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff162542),
                            ),
                          ),
                          Text(
                            " / day",
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.only(left: 10, right: 10),
          //   child: Container(
          //     height: 60,
          //     width: 335,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15),
          //       color: Colors.white,
          //     ),
          //     child: Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(left: 10),
          //           child: Text(
          //             "Schedule",
          //             style: TextStyle(
          //               color: Color(0xff162542),
          //               fontWeight: FontWeight.bold,
          //               fontSize: 18,
          //             ),
          //           ),
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(left: 230),
          //               child: Icon(
          //                 Icons.keyboard_arrow_down_sharp,
          //                 color: Color(0xff162542),
          //                 size: 30,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Schedule",
                style: TextStyle(
                  color: Color(0xff162542),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(""),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                ListTile(title: Text("")),
                ListTile(title: Text("")),
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Location",
                style: TextStyle(
                  color: Color(0xff162542),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(""),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                ListTile(title: Text("")),
                ListTile(title: Text("")),
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Personal Information",
                style: TextStyle(
                  color: Color(0xff162542),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(""),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                ListTile(title: Text("")),
                ListTile(title: Text("")),
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Price details",
                style: TextStyle(
                  color: Color(0xff162542),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              trailing: Icon(Icons.arrow_drop_down),
              children: [
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Car Rent Charge",
                        style: TextStyle(color: Color(0xff162542)),
                      ),
                      Text("₹ 58,000", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Fees & Charge",
                        style: TextStyle(color: Color(0xff162542)),
                      ),
                      Text(" ₹ 2,000", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total", style: TextStyle(color: Color(0xff162542))),
                      Text(" ₹ 60,000", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: 385,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      size: 25,
                      color: Color(0xff162542),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Wallet",
                            style: TextStyle(
                              color: Color(0xff162542),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 138),
                        child: ListTile(
                          title: Text(
                            "Change",
                            style: TextStyle(
                              color: Color(0xff162542),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 85),
          /*Column(
            children: [
              InkWell(
                onTap: () {
                  showMyAlert(context);
                },
                child: Container(
                  height: 50,
                  width: 310,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff162542)),
                    color: Color(0xff162542),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      "Confirm Payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),*/
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 75,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: Colors.grey.shade200)),
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            showMyAlert(context);
                          },
                          child: Container(
                            height: 50,
                            width: 340,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff162542)),
                              color: Color(0xff162542),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                "Confirm Payment",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
