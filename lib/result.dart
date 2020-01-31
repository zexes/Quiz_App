import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result({this.score, this.reset});

  String get resultPhrase {
    String resultText;

    if (score <= 8)
      resultText = 'You are awesome and innocent !!!';
    else if (score <= 12)
      resultText = 'Pretty likeable !!!';
    else if (score <= 16)
      resultText = 'You are strange !!!';
    else
      resultText = 'You are so bad !!!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.0),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
