import 'package:flutter/material.dart'; 
import './quiz.dart';
import './result.dart';
import '../module2/interfaceMod2.dart';

class interface1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _interface1State();
  }
}
  
class _interface1State extends State<interface1> {
  final _questions = const [
    {
      'questionText': ' Déficience intellectuelle',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'Oubli constant avec souvenir partiel des événements et pas d''autres difficultés.', 'score': 1},


        {'text': 'Perte de mémoire modérée,difficulté modérée à gérer des problèmes complexes.', 'score': 2},
        {'text': 'Perte de mémoire sévère avec désorientation du temps et souvent au lieu.', 'score': 3},
        {'text': 'Incapable de porter des jugements ou de résoudre des problèmes.', 'score': 4},
      ],
    },
    //,avec désorientation
//.Nécessite beaucoup d''aide pour les soins personnels.Ne peut pas être laissé seul du tout
//Altération grave des problèmes de manipulatio
    {
      'questionText': 'Trouble de la pensée',
      'answers': [

       {'text': 'Normal', 'score':0},

        {'text': 'Rêver vif', 'score': 1},
        {'text': 'Hallucinations «bénignes» avec perspicacité conservée.', 'score': 2},
        {'text': 'Des hallucinations ou des délires occasionnels à fréquents;sans perspicacité', 'score': 3},
        {
          'text':
              'Hallucinations persistantes, délires ou psychose florride.Incapable de prendre soin de soi.',
          'score': 4
        },
      ],
    },


    {
      'questionText': 'Dépression.',
      'answers': [
       {'text': 'Normal', 'score':0},
       {'text': 'Des périodes de tristesse ou de culpabilité supérieures à la normale, jamais soutenues pendant des jours ou des semaines. ', 'score': 1},
        {'text': 'Dépression soutenue (1 semaine ou plus).', 'score':2},
        {'text': 'Dépression prolongée avec symptômes végétatifs (insomnie, anorexie, perte de poids, perte d''intérêt). ', 'score': 3},
        {'text': 'Dépression soutenue avec symptômes végétatifs et pensées ou intentions suicidaires. ', 'score': 4},
      ],
    },


    {
      'questionText': ' Motivation / Initiative.',
      'answers': [
         {'text': 'Normal', 'score':0},

        {'text': 'Moins affirmé que d''habitude;plus passif.', 'score':1},
        {'text': 'Perte d''initiative ou désintérêt pour les activités électives (non routinières). ', 'score': 2},
        {'text': 'Perte d''initiative ou désintérêt pour les activités quotidiennes (de routine).', 'score': 3},
        {'text': 'Retiré, perte totale de motivation.', 'score': 4},
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
          title: Text('let''s talk'),
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