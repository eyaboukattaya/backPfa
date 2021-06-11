import 'dart:convert';
import 'dart:ui';

import 'package:app_parkinson/service/ser.dart';
import 'package:flutter/material.dart';

import '../model/drawing.dart';


class Draw extends CustomPainter {
  Future<Drawing> _futureAlbum;
  List<Offset> coordinates;

Draw({@required this.coordinates});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;
    List varial = [];

    String s;
    List varial1 = [];

    for (int i = 0; i < coordinates.length - 1; i++) {
      if (coordinates[i] != null && coordinates[i + 1] != null) {
        canvas.drawLine(coordinates[i], coordinates[i + 1], paint);
        //print(i);
        varial.add(coordinates[i].dx);
        s = varial.toString();

        varial1.add(coordinates[i].dy);
      } else if (coordinates[i] != null && coordinates[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [coordinates[i]], paint);
      }

     // print(i);
      
      // print(varial.toString().runtimeType);
      //print(varial1);
    }
    
    print(s);
    _futureAlbum = PostsRepository().postCoordinate(s);
  }

  @override
  bool shouldRepaint(Draw oldDelegate) =>
      oldDelegate.coordinates != coordinates;
}