import 'dart:convert';

import 'package:latihan_mvvm/model/ResponseUser.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_mvvm/utils/constants.dart';
import 'package:latihan_mvvm/view_models/UsersViewModel.dart';

class UserService {
  static Future<ResponseUser> getUsers() async {
    final response = await http.get(Uri.parse(URL_API));
    if (response.statusCode == SUCCESS) {
      // print(response.body);
      // print('\n');
      return ResponseUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load User');
    }
  }
}
