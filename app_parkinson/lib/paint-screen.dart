
  
import 'package:app_parkinson/draw.dart';
import 'package:app_parkinson/test1.dart';
import 'package:flutter/material.dart';


class PaintScreen extends StatefulWidget {
  @override
  _PaintScreenState createState() => _PaintScreenState();
}

class _PaintScreenState extends State<PaintScreen> {
  List<Offset> _coordinates = <Offset>[];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
    appBar: AppBar(
        title: Text("Let's paint!!"),
        actions: <Widget>[
          FlatButton(
              child: Row(
                children: [
                  Text("Clear", style: TextStyle(color: Colors.white),),
                  Icon(Icons.delete, color: Colors.white,),
                ],
              ),
                onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) =>SecondRoute(),
          
            
            
            
            
            
            
            
            ),
            
          );
        },
          ),
        
        ],
        
      ),

      body: new Container(
        
        child: new GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            setState(() {
              RenderBox object = context.findRenderObject();
              Offset _localPosition =
                  object.globalToLocal(details.globalPosition);
              _coordinates = new List.from(_coordinates)..add(_localPosition);
            });
          },
          onPanEnd: (details) {
                    setState(() {
                      _coordinates.add(null);
                       _coordinates.clear();
  
                    });
                  },
          child: new CustomPaint(
            painter: new Draw(coordinates:_coordinates),
            size: Size.infinite,
          ),
        ),
        
      ),
     

      
      
    );
  }
  
}
