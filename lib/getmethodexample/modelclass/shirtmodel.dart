// To parse this JSON data, do
//
//     final shirtModel = shirtModelFromJson(jsonString);

import 'dart:convert';

List<ShirtModel> shirtModelFromJson(String str) => List<ShirtModel>.from(json.decode(str).map((x) => ShirtModel.fromJson(x)));

String shirtModelToJson(List<ShirtModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShirtModel {
  int userId;
  int id;
  String title;
  String body;

  ShirtModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory ShirtModel.fromJson(Map<String, dynamic> json) => ShirtModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
