import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(FontAwesomeExample());
}

class FontAwesomeExample extends StatelessWidget {
  const FontAwesomeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.lightbulb,
                  size: 80,
                  color: Colors.blue, // You can set the color if needed
                ),
                SizedBox(
                  width: 12,
                ),
                FaIcon(
                  FontAwesomeIcons.carBattery,

                  size: 80,
                  color: Colors.black, // You can set the color if needed
                ),
                SizedBox(
                  width: 12,
                ),
                FaIcon(
                  FontAwesomeIcons.cartPlus,
                  size: 80,
                  color: Colors.lightGreen, // You can set the color if needed
                ),
                SizedBox(
                  width: 12,
                ),
                FaIcon(
                  FontAwesomeIcons.mobile,
                  size: 80,
                  color: Colors.black, // You can set the color if needed
                ),
                SizedBox(
                  width: 12,
                ),
                FaIcon(
                  FontAwesomeIcons.google,
                  size: 80,
                  color: Colors.amber, // You can set the color if needed
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
