import 'package:flutter/material.dart';
import 'package:quiz/question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['One', 'Two', 'Three'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: Column(children: [
            Question(
              questions.elementAt(_questionIndex),
            ),
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: _answerQuestion),
          ])),
    );
  }
}
