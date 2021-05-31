import 'package:app_parkinson/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'service/ser.dart';
import 'model/patient.dart';
import 'paint-screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}



