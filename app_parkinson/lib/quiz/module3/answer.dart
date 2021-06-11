import 'package:flutter/material.dart';
  
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  
  Answer(this.selectHandler, this.answerText);
  
  @override
  Widget build(BuildContext context) {
     return Center(
   child: Container(
         margin: new EdgeInsets.symmetric(vertical: 10.0),

      width: 400,
      height: 100,
      child: RaisedButton(
        color:Colors.lightBlue[200],
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ), //RaisedButton
    ),
    );//Container
  }
}