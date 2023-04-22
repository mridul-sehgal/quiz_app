import 'package:flutter/material.dart';

import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({required this.questions, required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer( ()=> answerQuestion(answer['score']), answer['text'].toString());
        })
      ],
    );
  }
}
  