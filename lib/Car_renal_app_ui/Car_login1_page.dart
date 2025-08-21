import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';

import 'Car_login2_page.dart';

class CarLogin1Page extends StatefulWidget {
  const CarLogin1Page({super.key});

  @override
  State<CarLogin1Page> createState() => _CarLogin1PageState();
}

class _CarLogin1PageState extends State<CarLogin1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Assets/Login_page_img.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Sign in \nto start exploring",
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xff464646),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Mobile number",
                style: TextStyle(fontSize: 16, color: Color(0xff464646)),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(borderSide: BorderSide()),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ${country.name}');
                },
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarLogin2Page()),
                  );
                },
                child: Container(
                  height: 60,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff162542),
                  ),
                  child: Center(
                    child: Text(
                      "Get OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(child: Text("Or")),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      "Assets/Google__G__logo.svg.webp",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjvzC_QRv6moAhgNb5C6e3yicKgFND1g2RwA&s",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage("Assets/apple_logo.png"),
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
