import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  Question(
    this.questiontext,
  );
  String questiontext;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 30, wordSpacing: 1.5),
        ));
  }
}
