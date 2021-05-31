import 'package:app_parkinson/quiz/description.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';


import 'package:app_parkinson/style/theme.dart' as Theme;


import 'package:flutter/widgets.dart';

class yesPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        body: FoldableSidebarBuilder(
          drawerBackgroundColor:Colors.white,
          drawer: CustomDrawer(closeDrawer: (){
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          },),
          screenContents: FirstScreen(),
          status: drawerStatus,
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue[800],
            child: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              setState(() {
                drawerStatus = drawerStatus == FSBStatus.FSB_OPEN ? FSBStatus.FSB_CLOSE : FSBStatus.FSB_OPEN;
              });
            }),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
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
      
      child: Center(child: Text("Be ready to start your tests!",style: TextStyle(fontSize: 20,color: Colors.white),),),
    );
  }
}


class CustomDrawer extends StatelessWidget {

  final Function closeDrawer;

  const CustomDrawer({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey.withAlpha(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  Image.asset(
                    "assets/parkinson.png",
                    width: 200,
                    height: 200,
                   
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Parkinson detection")
                ],
              )),
          ListTile(
            onTap: () {
    Navigator.push(context, MaterialPageRoute(
    	builder: (context) => Description()),);
},
            leading: Icon(Icons.assistant),
            title: Text(
              "Talking Test",
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped settings");
            },
            leading: Icon(Icons.directions_walk),
            title: Text("Walking Test"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Payments");
            },
            leading: Icon(Icons.pages),
            title: Text("Drawing Test"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Notifications");
            },
            leading: Icon(Icons.video_call),
            title: Text("Tutorial"),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              debugPrint("Tapped Log Out");
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("Log Out"),
          ),
        ],
      ),
    );
  }
}