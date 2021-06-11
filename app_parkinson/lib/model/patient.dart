import 'dart:convert';

List<Patients> PatientsFromJson(String str) =>
    List<Patients>.from(json.decode(str).map((x) => Patients.fromJson(x)));

String PatientsToJson(List<Patients> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Patients {
  Patients({
  
    this.name,
      this.age,
    this.taille,
    this.sexe,
    this.password,
  });

 
  final String name;
  final String sexe;
  final String age;

  final String taille;
  final String password;

  factory Patients.fromJson(Map<String, dynamic> json) => Patients(
        
        name: json["name"],
        age: json["age"],
          taille: json["taille"],
           sexe: json["sexe"],
          password: json["password"],
      );

  Map<String, dynamic> toJson() => {
     
        "name": name,
        "age": age,
  
        "taille": taille,
        "sexe": sexe,
        "password": password,

      };
}