import 'package:flutter/material.dart';
import '../model/patient.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PostsRepository {
  Future<List<Patients>> getPatients() async {
   
  var response = await http.get(Uri.encodeFull("http://192.168.1.100:8000/api/patients"), headers: {"Accept": "application/json"});
   if (response.statusCode == 200) {
     debugPrint(response.body);
    return PatientsFromJson(response.body);
   }
    else {
      return null;
    }
  }

  Future<Patients> createPatients(String userName,String password) async {
  final response = await http.post(Uri.encodeFull("http://192.168.1.100:8000/api/patients"),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'userName': userName,
      'password':password,
    }),
  );
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    
    return Patients.fromJson(jsonDecode(response.body));
  } else {

    // If the server did not return a 201 CREATED response,
    // then throw an exception.

    throw Exception('Failed to load patient');
  }
}
} 

  