import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetHandler;

  Result(this.resultscore, this.resetHandler);
  String get resultPhrase {
    var resultText;
    if (resultscore <= 4) {
      resultText = 'you are a hufflepuff';
    } else if (resultscore > 4 && resultscore <= 7) {
      resultText = 'you are a ravenclaw';
    } else if (resultscore > 7 && resultscore <= 9) {
      resultText = 'you are a slytherin';
    } else {
      resultText = 'you are a gryffindoor';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('RESTART QUIZ'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
