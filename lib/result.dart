import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;

  Result(this.resultScore, this.restart);

  String get resultPhrase {
    return resultScore <= 8 ? 'Read the book.' : 'No more questions.';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(resultPhrase,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
      ElevatedButton(
          child: Text('Restart'),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: () => restart()),
    ]));
  }
}
