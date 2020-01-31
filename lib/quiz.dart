import 'package:flutter/cupertino.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function changeQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.changeQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
//      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              text: answer['text'],
              onPressed: () => changeQuestion(answer['score']));
        }).toList(), // take error off by updating sdk, streams used
      ],
    );
  }
}
