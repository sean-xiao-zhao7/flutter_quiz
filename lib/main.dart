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
  var _totalScore = 0;
  final _questions = const [
    {
      'question': 'Eh?',
      'answers': [
        {"text": 'Poutine.', "score": 10}
      ],
    },
    {
      'question': 'Huh?',
      'answers': [
        {"text": 'Mythical cheese', "score": 11}
      ],
    },
    {
      'question': 'Wee?',
      'answers': [
        {"text": 'Goat', "score": 12}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    // if (_questionIndex >= questions.length) {
    //   setState(() {
    //     _questionIndex = 0;
    //   });
    // }
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
              : Result(_totalScore, _restart)),
    );
  }
}
