import 'package:flutter/material.dart';
import './quiz.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String text;
    if (resultScore <= 8) {
      text = 'You are awesome and innocent!!!';
    } else if (resultScore <= 13) {
      text = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      text = 'You are ... strange?!';
    } else {
      text = 'You\'re so bad!!!';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    //Returns new widget after
    //all questions have been answered
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
          child: Text('Reset Quiz!!'),
          onPressed: reset,
        )
      ],
    );
  }
}
