import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //to store the questions list
  final List<Map<String, Object>> questions;
  //to store the answer function
  final Function answerQuestion;
  //to store the index of the list
  final int index;

//Initializing Constructor
  Quiz({
    this.questions,
    this.answerQuestion,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //Align a list of widgets vertically
      children: [
        //list of widgets
        Question(
          //(refer Question.dart)
          //takes induvidual questions from the list
          //and displays them
          questions[index]['questionText'],
        ),
        //Takes the answers from each of the questions
        //from the list and draws a button for each of
        //them(Refer Answer.dart)
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
