
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';



import 'package:flutter/rendering.dart';




import 'package:flutter/widgets.dart';


class Description extends StatelessWidget {
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
      
            child: Center(
              child: new Container(
                child: new Card(
                  
                  color: Colors.white54,
                  elevation: 6.0,
                  margin: EdgeInsets.only(right: 15.0, left: 15.0),
                  child: new Wrap(
                    children: <Widget>[
                      Center(
                        child: new Container(
                            width: 300.0,
                  height: 190.0 ,
                          margin: EdgeInsets.only(top: 20.0),
                          child: new Text(
                            'Test 1 quiz description ',
                            style: TextStyle(
                                fontSize: 25.0, color: Colors.black),
                          ),
                          
                        ),
                      ),
                     SizedBox(
            height: 20.0,
          ),
          Container(
            width: 200.00,

            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
                padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.center,
                    colors: [Colors.redAccent,Colors.blue[50]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("Contact me",  style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    )
              ),
            ),
      ),
     );
  


  }
}

                
    
     

      
      
    
 






