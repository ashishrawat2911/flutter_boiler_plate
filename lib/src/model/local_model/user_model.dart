// To parse this JSON data, do
//
//     final userDataModel = userDataModelFromJson(jsonString);
import 'dart:convert';

UserDataModel userDataModelFromJson(String str) => UserDataModel.fromJson(json.decode(str));

String userDataModelToJson(UserDataModel data) => json.encode(data.toJson());
class UserDataModel {
  String fullName;
  String username;
  String photoUrl;
  String id;
  String email;
  String createdAt;

  UserDataModel({
    this.fullName,
    this.username,
    this.photoUrl,
    this.id,
    this.email,
    this.createdAt,
  });

  factory UserDataModel.fromJson(Map json) => UserDataModel(
        fullName: json["fullName"],
        username: json["username"],
        photoUrl: json["photoUrl"],
        id: json["id"],
        email: json["email"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "username": username,
        "photoUrl": photoUrl,
        "id": id,
        "email": email,
        "createdAt": createdAt,
      };
}
