import 'package:app_parkinson/main.dart';
import 'package:app_parkinson/quiz/description.dart';
import 'package:app_parkinson/ui/yesPage.dart';
import 'package:flutter/material.dart';
import 'package:app_parkinson/style/theme.dart' as Theme;

import 'module1/interfaceMod1.dart';
import 'module2/interfaceMod2.dart';
import 'module3/interfaceMod3.dart';


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
@override
  Widget build(BuildContext context) {
     return MaterialApp(
     

      home: Scaffold(

        appBar: AppBar(
           backgroundColor: Colors.white,

      
         actions: <Widget>[
           FlatButton(
              child: Row(

                children: [
                   Text("Let's talk!!"),

                  Icon(Icons.navigate_before, color: Colors.lightBlue[200],),
                ],
              ),
                onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => Description(),  
            ),
            
          );
        },
          ),
           
          FlatButton(
              child: Row(
                children: [

                  Icon(Icons.home, color: Colors.lightBlue[200],),
                
                ],
              ),
                onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) =>yesPage(),  
            ),
            
          );
        },
          ),
        
        ],
        ),
        body: Center(
        
      child: Container(
               color: Colors.lightBlue[200],
      padding: EdgeInsets.only(top: 200.0),
      child: Column(

         children: <Widget>[

         
         
          
           
 Container(
    
        padding: const EdgeInsets.all(16),
            height: 130,
            child: Card(
          color: Colors.white,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => interface1()));
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: AssetImage('assets/s_402644714-stock-illustration-man-angry-aggressive-icon-negative.jpg'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ]),
                      ),
                    ),
                  ),
          
                   Container(
                        padding: const EdgeInsets.all(6),
                        child: Chip(
                            padding: const EdgeInsets.all(6),
                          label: Text('COMPORTEMENT ET HUMEUR'),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.lightBlue[200],
                          elevation: 10,
                          autofocus: true,
                        )),
                  
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
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => interface2()));
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                            image: AssetImage('assets/js.png'),


                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ]),
                      ),
                    ),
                  ),
          
                   Container(
                          padding: const EdgeInsets.all(6),
                        child: Chip(
                            padding: const EdgeInsets.all(2),
                          label: Text('ACTIVITÉS DE VIE QUOTIDIENNE'),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.lightBlue[200],
                          elevation: 10,
                          autofocus: true,
                        )),
                  
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
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => interface3()));

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                               image: AssetImage('assets/moteur1.png'),

                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ]),
                      ),
                    ),
                  ),
          
                   Container(
                    padding: const EdgeInsets.all(6),
                        child: Chip(
                            padding: const EdgeInsets.all(2),
                          label: Text('EXAMEN DU MOTEUR                 '),
                                   
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.lightBlue[200],
                          elevation: 10,
                          autofocus: true,
                        )),
                  
                ],
              ),
            ),
          
        
      ),
       ],
      )

    )
        ),
      )
     );
  
    
    
  }
}