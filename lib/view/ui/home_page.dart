import 'dart:js';

import 'package:flutter/material.dart';
import 'package:latihan_mvvm/view_models/UsersViewModel.dart';
import 'package:provider/provider.dart';
import '../components/AppLoading.dart';
import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  final _TAG = '/detailScreen';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text('Mvvm')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text(
                'Daftar User',
                style: textTitle,
              ),
              _ui(userViewModel)
            ],
          ),
        ),
      ),
    );
  }

  _ui(UserViewModel userViewModel) {
    // print('data ${userViewModel.users.data[0].first_name}');
    if (userViewModel.loading) {
      return AppLoading();
    }
    return Expanded(
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              child: ListTile(
                title: Text(
                    '${userViewModel.users.data[index].first_name} ${userViewModel.users.data[index].last_name}'),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(userViewModel.users.data[index].avatar),
                  radius: 30,
                ),
                onTap: () {
                  userViewModel.setSelectUser(userViewModel.users.data[index]);
                  Navigator.pushNamed(context, _TAG);
                },
              ),
            );
          },
          itemCount: userViewModel.users.data.length),
    );
  }
}
