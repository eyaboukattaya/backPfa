import 'dart:ui';

import 'package:flutter/material.dart';




class Draw extends CustomPainter{
  List<Offset> coordinates;

  Draw({@required this.coordinates});


  @override
  void paint(Canvas canvas, Size size) {

  Paint paint = new Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;

    for (int i = 0; i < coordinates.length - 1; i++) {
      if (coordinates[i] != null && coordinates[i + 1] != null) {
        canvas.drawLine(coordinates[i],coordinates[i + 1], paint);
        var points = coordinates[i+1];
           print(points);
      
      }
      else if (coordinates[i] != null && coordinates[i + 1] == null) {
     
         canvas.drawPoints(PointMode.points,[coordinates[i]], paint);
           
      }
    }

  }

  

  @override
  bool shouldRepaint(Draw oldDelegate) => oldDelegate.coordinates!=coordinates;
}