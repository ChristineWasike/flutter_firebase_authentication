import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final generateAutoWord = new WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 5),
            child: Text(
              "Random Word",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, right: 5),
            child: Text(
              generateAutoWord.asPascalCase,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
/*
I can see clearly now that the rain is gone
Definitely gonna make this worthwhile
what kind of crap is this ?
Your keyboard makes so much noise


 */
