import 'package:flutter/material.dart';

import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TO DO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s Your Fav Colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'what\'s Your Fav Animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 5},
        {'text': 'Snake', 'score': 10},
      ],
    },
    {
      'questionText': 'what\'s Your Fav gener of music?',
      'answers': [
        {'text': 'Opera', 'score': 1},
        {'text': 'Jazz', 'score': 3},
        {'text': 'Heavy Metal', 'score': 5},
        {'text': 'Hip-Hop', 'score': 10},
      ],
    }
  ];
  var _questionIndex = 0;
  int _totalscore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more Questions');
    } else {
      print('No more questions left');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore, resetQuiz),
      ),
    );
  }
}
