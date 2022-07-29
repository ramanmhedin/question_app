import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:question/answer.dart';
import 'package:question/question.dart';
import 'package:question/answer.dart';

class Quiz extends StatelessWidget {
  final Function nextquistion;
  final List<Map<String, Object>> questions;
  final int index;
  Quiz(
      {required this.nextquistion,
      required this.questions,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question'] as String),
        ...(questions[index]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            an: () {
              nextquistion(answer["score"]);
            },
            answer: answer["text"] as String,
          );
        }).toList()
      ],
    );
  }
}
