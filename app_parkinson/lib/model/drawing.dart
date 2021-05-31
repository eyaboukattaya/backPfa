import 'dart:convert';

List<Drawing> DrawingFromJson(String str) =>
    List<Drawing>.from(json.decode(str).map((x) => Drawing.fromJson(x)));

String DrawingToJson(List<Drawing> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Drawing {
  Drawing({
    this.coordinates,
  });

  String coordinates;

  factory Drawing.fromJson(Map<String, dynamic> json) => Drawing(
        coordinates: json["coordinates"],
      );

  Map<String, dynamic> toJson() => {
        "coordinates": coordinates,
      };
}