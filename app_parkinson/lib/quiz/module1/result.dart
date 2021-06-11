import 'package:app_parkinson/quiz/module2/interfaceMod2.dart';
import 'package:flutter/material.dart';
  
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  
  Result(this.resultScore, this.resetHandler);


  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 13) {
      resultText = 'You should go to doctor!';
      print(resultScore);
    } else if (resultScore >= 10) {
      resultText = 'take care i advise you to visit a doctor';
      print(resultScore);
    } else if (resultScore >= 7) {
      resultText = 'take care and i advise you to visit a doctor';
    } else if (resultScore >= 1) {
      resultText = 'You are safe!';
    
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         // Text(
           // resultPhrase,
           // style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
           // textAlign: TextAlign.center,
         // ), //Text
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), 

          //Text
         // FlatButton(
           // child: Text(
            //  'Restart!',
          //  ), //Text
           // textColor: Colors.blue,
           // onPressed: resetHandler,
        //  ) //FlatButton
     FloatingActionButton(
        onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => interface2()));

        },
        child: new Icon(Icons.navigate_next),
        backgroundColor: Colors.yellow,
      ),
        ] //<Widget>[]
        
      )
      
      
    );
  //Center
  }
}