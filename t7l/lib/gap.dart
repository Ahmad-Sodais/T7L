import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

main() {
  runApp(gap2());
}

class gap2 extends StatefulWidget {
  const gap2({super.key});

  @override
  State<gap2> createState() => _gap2State();
}

class _gap2State extends State<gap2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue,
                ),
                Gap(10),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue,
                ),
                Gap(10),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue,
                ),
                Gap(10),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue,
                ),
                Gap(10),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.lightBlue,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
