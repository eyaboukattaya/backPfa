
import 'package:app_parkinson/ui/yesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter/rendering.dart';


import 'package:app_parkinson/style/theme.dart' as Theme;


import 'package:flutter/widgets.dart';

import 'noPage.dart';



class YesNo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

      return new Scaffold(
      key: _scaffoldKey,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height >= 775.0
                    ? MediaQuery.of(context).size.height
                    : 775.0,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientStart,
                        Theme.Colors.loginGradientEnd
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),

                 
                child: Column( 
               mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
             Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text('Are you on medication?: ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,)),
              ),
               Container(
          padding: const EdgeInsets.all(16),
            height: 130,
            child: Card(
    color: Colors.white,
              elevation: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                     child: GestureDetector(
                      onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => yesPage()));
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage('assets/okk.png'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.white)
                            ]),
                      ),
                    ),
                  ),
          
             
                  
                ],
              ),
            ),
          
        
      ),
         
     Container(
       padding: const EdgeInsets.all(16),
            height: 130,
            child: Card(
    color: Colors.white,
              elevation: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                     child: GestureDetector(
                      onTap: () {
  
                      showDialog(
              context: context,
              builder: (BuildContext context) => CustomDialog(
                title: "",
                description:
                    "Please repeat the tests after two hours !!",
                buttonText: "Okay",
              ),
            );
            },

            child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage('assets/nooo.png'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.white)
                            ]),
                      ),
     ),
      ),
                  
          ],
        ),
            ),
     ),
                 ]
                )
              ),
        ),
      )
      );

                
                
          
           
                  
             
      
    
  }
     
       
  }



