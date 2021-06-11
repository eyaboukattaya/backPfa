import 'package:flutter/material.dart'; 
import './quiz.dart';
import './result.dart';

  
class interface2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _interface2State();
  }
}
  
class _interface2State extends State<interface2> {
  final _questions = const [
    {
      'questionText': ' Discours ',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'légèrement affecté, aucune difficulté a être comprise.', 'score': 1},
        {'text': 'modérément affecte parfois demandé de répéter des déclarations.', 'score': 2},
        {'text': 'sérieusement affecté,souvement demandé de répéter des déclarations.', 'score': 3},
        {'text': 'initelligible la plupart du temps', 'score': 4},
      ],
    },


    {
      'questionText': 'Chute',
      'answers': [
          {'text': 'Normal', 'score':0},
        {'text': 'Chute rare', 'score':1},
        {'text': 'Chute occasionnelles moins d’une fois par jours', 'score': 2},
        {'text': 'Tombre en moyenne une fois par jour.', 'score': 3},
        {'text': 'Tombe plus qu’une fois par jour', 'score': 4},
    
      ],
    },


    {
      'questionText': 'Marcher',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'Diffuculté legere, peut ne pas balancer les bras ou avoir tendance à faire glisser la jambe. ', 'score': 1},
        {'text': 'Diffuculté moderé, mais necessite peu ou pas d’assistance', 'score':2},
        {'text': 'Perturbation grave de la marche, necessitant une assitance. ', 'score': 3},
        {'text': 'Ne peut pas marcher du tout même avec de l’aide. ', 'score': 4},
      ],
    },


    {
      'questionText': 'Tremblements ',
      'answers': [
           {'text': 'Normal', 'score':0},
        {'text': 'Légère et rarement presents.', 'score':1},
        {'text': 'Moderé, genant pour le patient. ', 'score': 2},
        {'text': 'Sévère : interfere avec des nombreuses activités.', 'score': 3},
        {'text': 'Marqué, interfere avec plupart des activités.', 'score': 4},
      ],
    },
     {
      'questionText': ' Ecriture manuscrite',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'légèrement lent ou petit.', 'score': 1},
        {'text': 'modérément lent ou petit mais tous les mots sont lisibles .', 'score': 2},
        {'text': 'sérieusement affecté ; tous les mots ne sont pas lisibles ', 'score': 3},
        {'text': 'a majorité des mots ne sont pas lisibles.', 'score': 4},
      ],
    },


   
  ];
  
  var _questionIndex = 0;
  var _totalScore = 0;
  
  void _resetQuiz() {
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
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('let' 's talk'),
         backgroundColor: Colors.lightBlue[200],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}