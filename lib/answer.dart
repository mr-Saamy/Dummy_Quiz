import 'package:flutter/material.dart';

//Takes the answers from the questions list passed
//by the main.dart file and draws induvidual
//buttons for each of them
class Answer extends StatelessWidget {
  //for taking the function ued for onPressed()
  final Function selectHandler;
  //for taking the value of each answer
  final String answerText;

  //Constructor for initializing the values
  Answer(this.selectHandler, this.answerText);

  @override
  //buiding the buttons
  Widget build(BuildContext context) {
    return Container(
      //to span the whole width of the screen
      width: double.infinity,
      //to provide a little spacing on either side
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      //body of the button
      child: RaisedButton(
        color: Colors.blue[900],
        textColor: Colors.white,
        //passing the answer value for each
        //button ]
        child: Text(this.answerText),
        //passing a pointer of the _answerQuestion
        //function to the button
        onPressed: selectHandler,
      ),
    );
  }
}
