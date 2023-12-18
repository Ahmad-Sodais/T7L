import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class slider extends StatelessWidget {
  const slider({super.key});

  @override
  Widget build(BuildContext context) {
    const ColorizeColors = [
      Colors.yellow,
      Colors.lightBlue,
      Colors.purple,
      Colors.lightGreen
    ];
    const colorizetextStlye = TextStyle(fontSize: 40, fontFamily: "Horizon");
    return Scaffold(
      body: Column(
        children: [
          AnimatedTextKit(animatedTexts: [
            ColorizeAnimatedText("Animation",
                textStyle: colorizetextStlye, colors: ColorizeColors)
          ])
        ],
      ),
    );
  }
}
