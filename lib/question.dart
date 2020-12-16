import 'package:flutter/material.dart';

//For drawing the quesstions on screen
class Question extends StatelessWidget {
  //for taking each question from the 'questions' list
  final String questionText;

  //Initialize using constructoe
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //Container is returned to span the entire width of the screen
    return Container(
      //Tp span the entire width of the screen
      width: double.infinity,
      margin: EdgeInsets.all(12),
      //draw the question on screen
      child: Text(
        questionText,
        //stylize the text
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        //Align the text to center
        textAlign: TextAlign.center,
      ),
    );
  }
}
