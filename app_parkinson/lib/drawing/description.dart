
import 'dart:ui';

import 'package:app_parkinson/drawing/paint-screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';



import 'package:flutter/rendering.dart';




import 'package:flutter/widgets.dart';




class DescriptionDrawing extends StatelessWidget {
  @override
 
   Widget build(BuildContext context) {
    
     return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            
            image: AssetImage('assets/parkTalk.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          ),
        ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      
           
              Card(
                  
                  color: Colors.white70,
                  elevation: 6.0,
                  margin: EdgeInsets.only(right: 15.0, left: 15.0),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                  child: new Wrap(
                    children: <Widget>[
                      Center(
                        child: new Container(
                            width: 300.0,
                            
                          height: 400.0 ,
                          margin: EdgeInsets.only(top: 20.0),
                          
                          child: new Text(
                            'Test 3 drawing description ',
                            style: TextStyle(
                                fontSize: 25.0, color: Colors.black),
                          ),
                          
                        ),
                      ),
                     SizedBox(
            height: 20.0,
          ),
         
        ],
      ),
    ),
    Container(
                margin: EdgeInsets.only(top: 130.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.blueAccent,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Colors.blue[100],
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                      Colors.blue[100],
                     Colors.blue[50],
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.blue[200],
                    splashColor: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "Start Now",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () =>
            Navigator.push(context,
            MaterialPageRoute(
            builder: (context) => PaintScreen()),
                       
               //   ),
             ),
                ),
    )
                   ],
              ),
   
            
      ),
     );
  


  }
}

                
    
     

      
      
    
 

