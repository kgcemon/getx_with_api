import 'dart:convert';

List<Postrmodel> postrmodelFromJson(String str) => List<Postrmodel>.from(json.decode(str).map((x) => Postrmodel.fromJson(x)));

String postrmodelToJson(List<Postrmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Postrmodel {
  int userId;
  int id;
  String title;
  String body;

  Postrmodel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Postrmodel.fromJson(Map<String, dynamic> json) => Postrmodel(
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
