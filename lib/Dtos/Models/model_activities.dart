import 'dart:convert';

Activities activitiesFromJson(String str) =>
    Activities.fromJson(json.decode(str));

String activitiesToJson(Activities data) => json.encode(data.toJson());

class Activities {
  Activities({
    this.data,
  });

  final List<Datum>? data;

  factory Activities.fromJson(Map<String, dynamic> json) => Activities(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.time,
    this.date,
  });

  final String? id;
  final String? title;
  final String? time;
  final String? date;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        title: json["title"],
        time: json["time"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "time": time,
        "date": date,
      };
}
