import 'dart:convert';

CurrentBookingListModel currentBookingListModelFromJson(String str) =>
    CurrentBookingListModel.fromJson(json.decode(str));

String currentBookingListModelToJson(CurrentBookingListModel data) =>
    json.encode(data.toJson());

class CurrentBookingListModel {
  String code;
  String status;
  String message;
  List<Response> response;

  CurrentBookingListModel({
    required this.code,
    required this.status,
    required this.message,
    required this.response,
  });

  factory CurrentBookingListModel.fromJson(Map<String, dynamic> json) =>
      CurrentBookingListModel(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        response: List<Response>.from(
            json["response"].map((x) => Response.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
      };
}

class Response {
  String title;
  String fromDate;
  String fromTime;
  String toDate;
  String toTime;

  Response({
    required this.title,
    required this.fromDate,
    required this.fromTime,
    required this.toDate,
    required this.toTime,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        title: json["title"],
        fromDate: json["from_date"],
        fromTime: json["from_time"],
        toDate: json["to_date"],
        toTime: json["to_time"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "from_date": fromDate,
        "from_time": fromTime,
        "to_date": toDate,
        "to_time": toTime,
      };
}
