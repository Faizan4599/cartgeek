import 'dart:convert';

PackagesListModel packagesListModelFromJson(String str) =>
    PackagesListModel.fromJson(json.decode(str));

String packagesListModelToJson(PackagesListModel data) =>
    json.encode(data.toJson());

class PackagesListModel {
  String code;
  String status;
  String message;
  List<Response> response;

  PackagesListModel({
    required this.code,
    required this.status,
    required this.message,
    required this.response,
  });

  factory PackagesListModel.fromJson(Map<String, dynamic> json) =>
      PackagesListModel(
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
  String price;
  String desc;

  Response({
    required this.title,
    required this.price,
    required this.desc,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        title: json["title"],
        price: json["price"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "desc": desc,
      };
}
