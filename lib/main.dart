//Importing Libraries
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//RunApp() on main()
void main() => runApp(MyApp());

//Main Widget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //List of Questions
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 2},
        {'text': 'Dog', 'score': 2},
        {'text': 'Fish', 'score': 5},
        {'text': 'Snake', 'score': 9}
      ],
    },
    {
      'questionText': 'What\'s your favourite fruit?',
      'answers': [
        {'text': 'Apple', 'score': 3},
        {'text': 'Orange', 'score': 3},
        {'text': 'Mango', 'score': 3},
        {'text': 'Grapes', 'score': 3}
      ],
    },
  ];

  var index = 0; //index of questions
  var total = 0; //total score

//functon to reset the quiz after all
//questions are answered
  void resetQuiz() {
    setState(() {
      //to redraw the app
      index = 0;
      total = 0;
    });
  }

  //Cycling Function to cycle between questions
  void _answerQuestion(int score) {
    total += score;
    setState(() {
      index = index + 1;
    });

    print('Answer Chosen');
    print(index);
  }

  @override
  //Main Widget
  Widget build(BuildContext context) {
    return MaterialApp(
      //draws the app on screen

      home: Scaffold(
        //contains the widget tree

        //appbar widget
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Center(
            child: Text('My First App'),
          ),
        ),

        //Main body of the app containing
        //questions and answers
        body: index < questions.length
            ? Quiz(
                //refer quiz.dart
                questions: questions,
                answerQuestion: _answerQuestion,
                index: index)
            : Result(total, resetQuiz), //refer results.dart
      ),
    );
  }
}
