import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final VoidCallback restart;
  final int score;
  Result({super.key, required this.restart, required this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Text(
          'you did it',
          style: TextStyle(fontSize: 30, wordSpacing: 1.5),
        )),
        Text(
          "$score" as String,
          style: TextStyle(fontSize: 30, wordSpacing: 1.5),
        ),
        ElevatedButton(
          onPressed: (() {
            restart();
          }),
          child: Text('do you want agin'),
        )
      ],
    );
  }
}
