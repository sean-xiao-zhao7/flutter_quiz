import "package:flutter/material.dart";
import 'package:quiz/anwser.dart';
import 'package:quiz/question.dart';

class QuizWidget extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  QuizWidget(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['question'],
      ),
      ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ]);
  }
}
