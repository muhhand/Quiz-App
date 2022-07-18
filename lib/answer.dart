import 'package:flutter/material.dart';

class Answer extends StatelessWidget {


  final String aswerText;
  final Function()  x;

  Answer(this.x, this.aswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: x,
        child: Text(aswerText, style: TextStyle(fontSize: 26),),
      ),
    );
  }
}
