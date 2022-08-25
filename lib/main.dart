import 'dart:html';
import 'package:flutter/material.dart';
import 'package:giammi/answer.dart';
import 'package:giammi/question.dart';
import 'package:giammi/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < 2) {
        _questionIndex = _questionIndex + 1;
      } else {
        if (_questionIndex > 0) {
          _questionIndex = _questionIndex - 1;
        }
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Snake', 'Platypus'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Giammi Sanchez')),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
