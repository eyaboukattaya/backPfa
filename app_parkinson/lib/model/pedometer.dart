import 'dart:convert';

List<Pedometer> PedometerFromJson(String str) =>
    List<Pedometer>.from(json.decode(str).map((x) => Pedometer.fromJson(x)));

String PedometerToJson(List<Pedometer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pedometer {
  Pedometer({
    this.numberPas,
  });

  String numberPas;

  factory Pedometer.fromJson(Map<String, dynamic> json) => Pedometer(
        numberPas: json["number_pas"],
      );

  Map<String, dynamic> toJson() => {
        "number_pas": numberPas,
      };
}