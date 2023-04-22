import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalscore = 0;
  final _questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'answers': [
        {'text': 'red', 'score': 4},
        {'text': 'green', 'score': 3},
        {'text': 'blue', 'score': 2},
        {'text': 'yellow', 'score': 1},
      ]
    },
    {
      'questionText': 'what\'s your favourite animal',
      'answers': [
        {'text': 'lion', 'score': 4},
        {'text': 'snake', 'score': 3},
        {'text': 'eagle', 'score': 2},
        {'text': 'badger', 'score': 1},
      ]
    },
    {
      'questionText': 'what would you like to keep as a prrecious possession ',
      'answers': [
        {'text': 'sword', 'score': 4},
        {'text': 'locket', 'score': 3},
        {'text': 'diadem', 'score': 2},
        {'text': 'goblet', 'score': 1},
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore,resetQuiz),
      ),
    );
  }
}
