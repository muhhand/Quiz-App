import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {

  final Function()  q;
  final int resultScore;

  Result(this.q,this.resultScore);


  String get resultPhase {
     String resultText;
    if(resultScore >= 2 ){
      resultText ='Awesome';
    }else if (resultScore >= 1 ) {
      resultText = 'Good';
    } else {
      resultText = 'Bad';
    }
    return resultText;
    }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Score is $resultScore',
            style: TextStyle(fontSize: 32,
                fontWeight: FontWeight.bold,
              color: b,
            ),
          ),
          Text(
            resultPhase,
            style: TextStyle(fontSize: 45,
            fontWeight: FontWeight.bold,
              color: b,
            ),
          ),
          TextButton(
            onPressed: q,
            child:
            Text(
              'Restart App',
              style: TextStyle(
                color: Colors.blue,
                  fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
