import 'dart:core';

import 'package:flutter/material.dart';
import 'package:question/answer.dart';
import 'package:question/question.dart';
import 'package:question/quiz.dart';
import 'package:question/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'question': "what is your favorite color",
      "answer": [
        {"text": "black", "score": 10},
        {"text": "red", "score": 7},
        {"text": "blue", "score": 5},
        {"text": "green", "score": 3}
      ],
    },
    {
      'question': "what is your favorite anime",
      "answer": [
        {"text": "cat", "score": 10},
        {"text": "dog", "score": 7},
        {"text": "fish", "score": 5},
        {"text": "sheep", "score": 3}
      ],
    },
    {
      'question': "what is your favorite sport",
      "answer": [
        {"text": "boxing", "score": 10},
        {"text": "football", "score": 7},
        {"text": "running", "score": 5},
        {"text": "swimming", "score": 3}
      ],
    },
  ];
  int _negativescore = 0;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    void _nextquistion(int score) {
      _negativescore = _negativescore + score;
      setState(() {
        _index = _index + 1;
      });
    }

    void restart() {
      setState(() {
        _negativescore = 0;
        _index = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('question'),
            centerTitle: true,
          ),
          body: Center(
              child: _index < questions.length
                  ? Quiz(
                      nextquistion: _nextquistion,
                      questions: questions,
                      index: _index)
                  : Result(
                      restart: restart,
                      score: _negativescore,
                    ))),
    );
  }
}
