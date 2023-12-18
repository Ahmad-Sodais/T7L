import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

main() {}

class anim extends StatefulWidget {
  const anim({super.key});

  @override
  State<anim> createState() => _animState();
}

class _animState extends State<anim> {
  @override
  Widget build(BuildContext context) {
    const ColorizeColors = [
      Colors.yellow,
      Colors.lightBlue,
      Colors.purple,
      Colors.lightGreen
    ];
    const colorizetextStlye = TextStyle(fontSize: 40, fontFamily: "Horizon");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 17, 17, 2),
        body: Container(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Hi,I'm Ahmad Sodais",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          AnimatedTextKit(animatedTexts: [
                            ColorizeAnimatedText("Web Developer",
                                textStyle: colorizetextStlye,
                                colors: ColorizeColors),
                            ColorizeAnimatedText("Mobile Developer",
                                textStyle: colorizetextStlye,
                                colors: ColorizeColors),
                            ColorizeAnimatedText("MySQL",
                                textStyle: colorizetextStlye,
                                colors: ColorizeColors),
                            ColorizeAnimatedText("Java Script",
                                textStyle: colorizetextStlye,
                                colors: ColorizeColors),
                            ColorizeAnimatedText("Flutter",
                                textStyle: colorizetextStlye,
                                colors: ColorizeColors),
                          ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
