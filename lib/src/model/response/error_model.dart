// To parse this JSON data, do
//
//     final errorModel = errorModelFromJson(jsonString);

import 'dart:convert';

ErrorModel errorModelFromJson(String str) =>
    ErrorModel.fromJson(json.decode(str));

class ErrorModel {
  ErrorModel({
    this.timestamp,
    this.status,
    this.error,
    this.message,
    this.path,
  });

  DateTime timestamp;
  int status;
  String error;
  String message;
  String path;

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        timestamp: DateTime.parse(json["timestamp"]),
        status: json["status"],
        error: json["error"],
        message: json["message"],
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp.toIso8601String(),
        "status": status,
        "error": error,
        "message": message,
        "path": path,
      };
}
