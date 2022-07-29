import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback an;
  String answer;
  Answer({
    required this.an,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: an,
      child: Text(answer),
    );
  }
}
