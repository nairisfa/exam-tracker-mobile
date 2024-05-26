// To parse this JSON data, do
//
//     final exam = examFromJson(jsonString);

import 'dart:convert';

List<Exam> examFromJson(String str) => List<Exam>.from(json.decode(str).map((x) => Exam.fromJson(x)));

String examToJson(List<Exam> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Exam {
  String model;
  int pk;
  Fields fields;

  Exam({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Exam.fromJson(Map<String, dynamic> json) => Exam(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  int user;
  String name;
  DateTime dateAdded;
  int grade;
  String description;

  Fields({
    required this.user,
    required this.name,
    required this.dateAdded,
    required this.grade,
    required this.description,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    user: json["user"],
    name: json["name"],
    dateAdded: DateTime.parse(json["date_added"]),
    grade: json["grade"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "date_added": "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
    "grade": grade,
    "description": description,
  };
}
