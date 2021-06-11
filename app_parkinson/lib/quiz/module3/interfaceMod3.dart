import 'package:flutter/material.dart'; 
import './quiz.dart';
import './result.dart';

  
class interface3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _interface3State();
  }
}
  
class _interface3State extends State<interface3> {
  final _questions = const [
  {
      'questionText': ' expression faciale ',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'Hypomimie minimale', 'score': 1},
        {'text': 'diminution légère mais définitivement anormale de l’expression du visage ', 'score': 2},
        {'text': 'Hypomimie modérée les lèvres s’ entrouvrent parfois ', 'score': 3},
        {'text': 'lèvres écartées de 1/4 pouces ou plus', 'score': 4},
      ],
    },


    {
      'questionText': 'tremblements au repos , main droite ',
      'answers': [
        {'text': 'Légère et rarement présente', 'score': 1},
        {'text': 'Doux en amplitude et persistant ou modérée en amplitude mais présente seulement par intermittence', 'score': 2},
        {'text': 'Modéré en amplitude et présent la plupart du temps', 'score': 3},
        {'text':   'Marqué en amplitude et présent la plupart du temps.','score': 4
        },
      ],
    },


    {
      'questionText': 'Dépression.',
      'answers': [
        {'text': 'Des périodes de tristesse ou de culpabilité supérieures à la normale, jamais soutenues pendant des jours ou des semaines. ', 'score': 1},
        {'text': 'Dépression soutenue (1 semaine ou plus).', 'score':2},
        {'text': 'Dépression prolongée avec symptômes végétatifs (insomnie, anorexie, perte de poids, perte d''intérêt). ', 'score': 3},
        {'text': 'Dépression soutenue avec symptômes végétatifs et pensées ou intentions suicidaires. ', 'score': 4},
      ],
    },


    {
      'questionText': ' tremblements au repos , main gauche ',
      'answers': [
        {'text': 'Légère et rarement présente.', 'score':1},
        {'text': 'Doux en amplitude et persistant ou modérée en amplitude mais présente seulement par intermittence ', 'score': 2},
        {'text': 'Modéré en amplitude et présent la plupart du temps', 'score': 3},
        {'text': 'Marqué en amplitude et présent la plupart du temps', 'score': 4},
      ],
    },
     {
      'questionText': 'Mouvements alternés rapides de la main droite ',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'Léger ralentissement et/ou réduction d’amplitude.', 'score': 1},
        {'text': 'Modérément altéré fatiguant définitif et précoce, peut avoir des arrestations occasionnelles en mouvement ', 'score': 2},
        {'text': 'Gravement affaibli, fréquente hésitation à initier des mouvements ou arrestations sans un mouvement en cours', 'score': 3},
        {'text': 'Peut à peine effectuer la tâche ', 'score': 4},
      ],
    },


  
     {
      'questionText': ' Se lever de la chaise ',
      'answers': [
         {'text': 'Normal', 'score':0},
        {'text': 'Ralenti ou peut nécessiter plus d’une tentative ', 'score': 1},
        {'text': 'Se soulevé des bras du siège .', 'score': 2},
        {'text': 'A tendance à reculer et peut devoir essayer plus d’une fois, mais peut se lever sans aide', 'score': 3},
        {'text': 'Impossible de lever', 'score': 4},
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