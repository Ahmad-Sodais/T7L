import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

main() {
  runApp(lottie());
}

class lottie extends StatefulWidget {
  const lottie({super.key});

  @override
  State<lottie> createState() => _lottieState();
}

class _lottieState extends State<lottie> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_jmejybvu.json')),
      ),
    );
  }
}


// ('https://assets1.lottiefiles.com/packages/lf20_jmejybvu.json')
// ('https://assets5.lottiefiles.com/packages/lf20_xdfeea1')