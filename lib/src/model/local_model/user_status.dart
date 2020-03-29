// To parse this JSON data, do
//
//     final userStatus = userStatusFromJson(jsonString);

import 'dart:convert';

UserStatus userStatusFromJson(String str) => UserStatus.fromJson(json.decode(str));

String userStatusToJson(UserStatus data) => json.encode(data.toJson());

class UserStatus {
  bool isOnline;
  Typingstatus typingstatus;

  UserStatus({
    this.isOnline,
    this.typingstatus,
  });

  factory UserStatus.fromJson(Map<String, dynamic> json) => UserStatus(
    isOnline: json["isOnline"],
    typingstatus: Typingstatus.fromJson(json["typingstatus"]),
  );

  Map<String, dynamic> toJson() => {
    "isOnline": isOnline,
    "typingstatus": typingstatus.toJson(),
  };
}

class Typingstatus {
  bool isTyping;
  String forUsername;

  Typingstatus({
    this.isTyping,
    this.forUsername,
  });

  factory Typingstatus.fromJson(Map<String, dynamic> json) => Typingstatus(
    isTyping: json["isTyping"],
    forUsername: json["forUsername"],
  );

  Map<String, dynamic> toJson() => {
    "isTyping": isTyping,
    "forUsername": forUsername,
  };
}
