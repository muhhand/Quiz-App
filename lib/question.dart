import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22,
        color: b,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
