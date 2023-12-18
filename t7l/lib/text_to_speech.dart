import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MySpeech());
}

class MySpeech extends StatefulWidget {
  const MySpeech({Key? key});

  @override
  State<MySpeech> createState() => _MySpeechState();
}

class _MySpeechState extends State<MySpeech> {
  TextEditingController textEditingController = TextEditingController();
  FlutterTts flutterTts = FlutterTts();

  void textToSpeech(String text) async {
    await flutterTts.setLanguage("en-Us");
    await flutterTts.setVolume(0.5); // Corrected method name
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(58, 53, 53, 9),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Text to speech",
                    style: TextStyle(
                        fontFamily: "Horizon",
                        color: Colors.white,
                        fontSize: 40),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: textEditingController,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    textToSpeech(textEditingController.text);
                    Colors.lightBlue;
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
