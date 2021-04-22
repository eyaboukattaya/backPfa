import 'dart:ui';

import 'package:flutter/material.dart';
import 'drawing_area.dart';

class Draw extends CustomPainter{
  List<DrawingArea> coordinates;

  Draw({@required this.coordinates});


  @override
  void paint(Canvas canvas, Size size) {

   for(int x=0;x<coordinates.length -1 ;x++)
     {
       if(coordinates[x]!=null && coordinates[x+1]!=null){
         Paint paint = coordinates[x].areaPaint;
         canvas.drawLine(coordinates[x].coordinate,coordinates[x+1].coordinate, paint);
         var cordinate = coordinates.length;
           print(cordinate);
           //print(coordinates[x].coordinate);
           //print(coordinates[x+1].coordinate);
       }
       else if(coordinates[x]!=null && coordinates[x+1]==null){
         Paint paint = coordinates[x].areaPaint;
         canvas.drawPoints(PointMode.points,[coordinates[x].coordinate], paint);
           print(coordinates.length); 
           //print(coordinates[x].coordinate);
           //print(coordinates[x+1].coordinate);

       }
        
     }
   

  }

  @override
  bool shouldRepaint(Draw oldDelegate) => oldDelegate.coordinates!=coordinates;
}