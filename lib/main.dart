import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
Color w = Colors.white;
Color b = Colors.black;
class _MyAppState extends State<MyApp> {


  bool isSwitched = false;

  int totalScore = 0;
  int questionIndex = 0;

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
    print('Answer Chosen !');
    print(totalScore);
  }

  final List<Map<String, Object>> question = [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Blue', 'score': 0},
        {'text': 'Green', 'score': 0},
        {'text': 'Yellow', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'Elephant', 'score': 1},
        {'text': 'Rabbit', 'score': 0},
        {'text': 'Lion', 'score': 0},
        {'text': 'Tiger', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your favourite country ?',
      'answers': [
        {'text': 'France', 'score': 1},
        {'text': 'Turkey', 'score': 0},
        {'text': 'Egypt', 'score': 0},
        {'text': 'UK', 'score': 0},
      ]
    },
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App',style: TextStyle(color: w),),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value){
                setState((){
                  isSwitched = value;
                  print(isSwitched);
                  if (isSwitched == true){b=Colors.white; w=Colors.black;}
                  if (isSwitched == false){b=Colors.black; w=Colors.white;}
                });
              },
              activeColor: Colors.white,
            ),
          ],
        ),
        body: Container(
          color: w,
          child: questionIndex < question.length
              ? Quiz(question, questionIndex, answerQuestion)
              : Result(resetQuiz,totalScore),
        ),
      ),
    );
  }
}
