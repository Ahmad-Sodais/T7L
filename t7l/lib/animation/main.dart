import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  var col = Colors.green;
  changeing() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 100,
              height: 100,
              color: col,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    ++counter;
                    if (counter % 2 == 0) {
                      col = Colors.yellow;
                    } else
                      (col = Colors.red);
                  });
                },
                child: Text("chang color"))
          ],
        )),
      ),
    );
  }
}
