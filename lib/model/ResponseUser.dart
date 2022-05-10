import 'User.dart';

class ResponseUser {
  final int page;
  final int per_page;
  final int total;
  final int total_pages;
  List<User> data;

  ResponseUser(
      {required this.page,
      required this.per_page,
      required this.total,
      required this.total_pages,
      required this.data});

  factory ResponseUser.fromJson(Map<String, dynamic> json) {
    return ResponseUser(
        page: json['page'],
        per_page: json['per_page'],
        total: json['total'],
        total_pages: json['page'],
        data: List<User>.from(json['data'].map((e) => User.fromJson(e))));
  }
}
