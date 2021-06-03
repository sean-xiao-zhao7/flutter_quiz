import 'package:flutter/material.dart';
import 'package:quiz/anwser.dart';
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
    const questions = [
      {
        'question': 'Eh?',
        'answers': ['Poutine.'],
      },
      {
        'question': 'Huh?',
        'answers': ['Mythical cheese'],
      },
      {
        'question': 'Wee?',
        'answers': ['Goat'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: Column(children: [
            Question(
              questions[_questionIndex]['question'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ])),
    );
  }
}
