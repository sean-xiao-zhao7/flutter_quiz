import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answer;
  final int score;

  Answer(this.answerQuestion, this.answer, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answer),
          // onPressed: answerQuestion(score)),
          onPressed: () => answerQuestion(score)),
    );
  }
}
