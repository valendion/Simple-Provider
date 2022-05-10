import 'dart:convert';

class User {
  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  User(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.avatar});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        email: json['email'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        avatar: json['avatar']);
  }
}
