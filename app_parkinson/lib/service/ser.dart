import 'package:flutter/material.dart';
import '../model/patient.dart';
import '../model/pedometer.dart';
import '../model/drawing.dart';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

class PostsRepository {
  Future<List<Patients>> getPatients() async {
   
  var response = await http.get(Uri.encodeFull("http://192.168.1.101:8000/api/patients"), headers: {"Accept": "application/json"});
 

   if (response.statusCode == 200) {
      debugPrint(response.body);
    return PatientsFromJson(response.body);
    
   }
    else {
      return null;
    }
  }

  Future<Patients> createPatients(String name,String age,String taille,String sexe,String password) async {
  final response = await http.post(Uri.encodeFull("http://192.168.1.101:8000/api/patients"),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
   
      'name': name,
      'age':age,
     'taille':taille,
      'sexe':sexe,
      'password':password,
    
     
    }),
  );
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
        debugPrint(response.body);
    return Patients.fromJson(jsonDecode(response.body));
  } else {

    // If the server did not return a 201 CREATED response,
    // then throw an exception.
     debugPrint(response.body);
    throw Exception('Failed to post patient');
  }
}
 
 Future<List<Pedometer>> getSteps() async {
    var response = await http.get(
        Uri.encodeFull("http://192.168.1.101:8000/api/test1"),
        headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return PedometerFromJson(response.body);
    } else {
      return null;
    }
  }


 Future<List<Drawing>> getVector() async {
    var response = await http.get(
        Uri.encodeFull("http://192.168.1.101:8000/api/test2"),
        headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      debugPrint(response.body);
      return DrawingFromJson(response.body);
    } else {
      return null;
    }
  }

  Future<Drawing> postCoordinate(String coordinates) async {
    final response = await http.post(
      Uri.encodeFull("http://192.168.1.101:8000/api/test2"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'coordinates': coordinates,
      }),
    );
    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.

      return Drawing.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.

      throw Exception('Failed to load patient');
    }
  }
  /*
Future<QuizScore> postScore(String score) async {
    final response = await http.post(
      Uri.encodeFull("http://192.168.1.101:8000/api/quiz"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'score': score,
      }),
    );
    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.

      return Pedometer.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.

      throw Exception('Failed to load score');
    }
  }*/
}