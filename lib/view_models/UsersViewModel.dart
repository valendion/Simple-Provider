import 'package:flutter/material.dart';
import 'package:latihan_mvvm/model/ResponseUser.dart';
import 'package:latihan_mvvm/model/User.dart';

import 'network/service.dart';

class UserViewModel extends ChangeNotifier {
  bool _loading = false;
  ResponseUser _users =
      ResponseUser(data: [], page: 0, per_page: 0, total: 0, total_pages: 0);
  // List<User> _users = [];

  User _selectedUser =
      User(id: 0, email: '', first_name: '', last_name: '', avatar: '');

  bool get loading => _loading;
  ResponseUser get users => _users;
  User get selectedUser => _selectedUser;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setUsers(ResponseUser users) {
    _users = users;
  }

  setSelectUser(User user) {
    _selectedUser = user;
  }

  UserViewModel() {
    getUsers();
  }

  void getUsers() async {
    setLoading(true);
    ResponseUser response = await UserService.getUsers();
    setUsers(response);
    setLoading(false);
  }
}
