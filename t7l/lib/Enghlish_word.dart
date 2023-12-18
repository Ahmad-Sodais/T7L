import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  final List<String> wordList = [
    'Men',
    'Women',
    'Car',
    'kite',
    'Dog',
    'cat',
    // Add more words as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Word Library'),
        ),
        body: WordList(wordList: wordList),
      ),
    );
  }
}

class WordList extends StatelessWidget {
  final List<String> wordList;

  WordList({required this.wordList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: wordList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(wordList[index]),
        );
      },
    );
  }
}
