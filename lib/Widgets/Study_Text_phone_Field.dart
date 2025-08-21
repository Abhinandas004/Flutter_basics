import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';


class PhoneInputExample extends StatelessWidget {
  const PhoneInputExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Phone Input Example")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntlPhoneField(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode: 'IN', // default country (India)
          onChanged: (phone) {
            print(phone.completeNumber); // e.g. +919876543210
          },
          onCountryChanged: (country) {
            print('Country changed to: ${country.name}');
          },
        ),
      ),
    );
  }
}
