import 'gap.dart';
import 'package:flutter/material.dart';
import 'lottie.dart';
import 'animated.dart';
import 'text_to_speech.dart';
import 'videoPlayer.dart';
import 'font_awesome.dart';
import 'Enghlish_word.dart';

void main(List<String> args) {
  runApp(MYP());
}

class MYP extends StatefulWidget {
  const MYP({super.key});

  @override
  State<MYP> createState() => _MYPState();
}

class _MYPState extends State<MYP> {
  int counter = 1;
  var icon = Icon(Icons.dark_mode);
  var icolor = Colors.white;
  var bcolor = Color(0xff222431);
  var bacolor = Color(0xff222431);
  var wcolor = Colors.white;
  var fonts = TextStyle(
    fontFamily: "Pacifico",
    fontSize: 23,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: bacolor,
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 650),
                  child: AnimatedContainer(
                    width: 50,
                    height: 25,
                    duration: Duration(seconds: 2),
                    decoration: BoxDecoration(
                        color: icolor, borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            ++counter;
                            if (counter % 2 == 0) {
                              bacolor = Color(0xff222431);
                              wcolor = Colors.white;
                              bcolor = Color(0xff222431);
                            } else
                              (
                                bacolor = Colors.black,
                                wcolor = Color(0xff222431),
                                bcolor = Colors.white
                              );
                          });
                        },
                        icon: icon),
                  ),
                ),
                Container(
                  width: 350,
                  height: 600,
                  child: Container(
                    color: Color(0xff222431),
                    padding: EdgeInsets.all(20),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, bottom: 30, top: 40),
                          child: ListTile(
                            title: Text(
                              "Top Seven Libraries",
                              style: TextStyle(
                                  color: wcolor,
                                  fontSize: 30,
                                  fontFamily: "Pacifico"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "Animation",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => anim()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "Text To Speech",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MySpeech()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "Video player",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VideoApp()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "Font awesome",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FontAwesomeExample()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "English words",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp3()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "Lottie",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => lottie()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: wcolor,
                            ),
                            child: ListTile(
                              title: Text(
                                "Gap",
                                style: fonts,
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => gap2()));
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: bcolor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
