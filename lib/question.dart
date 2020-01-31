import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: double.infinity,
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28.0,
        ),
      ),
    );
  }

  static bool isFinished(int index, int questionLength) {
    return index == questionLength - 1;
  }
}
