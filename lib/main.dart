import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizApp> {
  var _questionIndex = 0;
  final _questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    // if (_questionIndex >= questions.length) {
    //   setState(() {
    //     _questionIndex = 0;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: (_questionIndex < _questions.length)
              ? QuizWidget(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result()),
    );
  }
}
