import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  State<myApp> createState() {
    return myAppState();
  }
}

class myAppState extends State<myApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'pink', 'score': 10},
        {'text': 'Green', 'score': 9},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Burger', 'score': 3},
        {'text': 'Pizza', 'score': 11},
        {'text': 'Biryani', 'score': 5},
        {'text': 'kfc', 'score': 5},
      ],
    },
    {
      'questionText': 'Who is your favourite politician',
      'answers': [
        {'text': 'Vishwajit Rane', 'score': 1},
        {'text': 'Deviya Rane', 'score': 1},
        {'text': 'Dattaraj Gauns', 'score': 1}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('more questions');
    } else {
      print('No more questions');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Dattaraj\'s Cool App')),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Result(_totalScore, resetQuiz)));
  }
}
