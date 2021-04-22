import 'dart:convert';

List<Patients> PatientsFromJson(String str) =>
    List<Patients>.from(json.decode(str).map((x) => Patients.fromJson(x)));

String PatientsToJson(List<Patients> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Patients {
  Patients({
    this.id,
    this.userName,
    this.taille,
    this.sexe,
    this.poids,
    this.age,
    this.password,
  });

  final int id;
  final String userName;
  final String sexe;
  final String age;
  final String poids;
  final String taille;
  final String password;

  factory Patients.fromJson(Map<String, dynamic> json) => Patients(
        id: json["id"],
        userName: json["userName"],
        age: json["age"],
        password: json["password"],
        sexe: json["sexe"],
        poids: json["poids"],
        taille: json["taille"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "age": age,
        "password": password,
        "taille": taille,
        "poids": poids,
        "sexe": sexe,
      };
}