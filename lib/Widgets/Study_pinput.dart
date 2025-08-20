import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';


class PinInputPage extends StatefulWidget {
  const PinInputPage({super.key});

  @override
  State<PinInputPage> createState() => _PinInputPageState();
}

class _PinInputPageState extends State<PinInputPage> {
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pinput Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Pinput(
              controller: pinController,
              length: 4, // Number of digits
              showCursor: true,
              onCompleted: (pin) {
                debugPrint('Entered PIN: $pin');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint("Current Value: ${pinController.text}");
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),

    );
  }
}
