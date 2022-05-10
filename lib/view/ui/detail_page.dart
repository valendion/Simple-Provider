import 'package:flutter/material.dart';
import 'package:latihan_mvvm/view_models/UsersViewModel.dart';
import 'package:provider/provider.dart';

import '../../utils/ci/injector.dart';
import '../theme/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return _detailUi(userViewModel);
  }

  _detailUi(UserViewModel userViewModel) {
    var selectedUser = userViewModel.selectedUser;
    if (selectedUser != null) {
      return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(selectedUser.avatar),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${selectedUser.first_name} ${selectedUser.last_name}',
              style: textTitle,
            )
          ],
        ),
      );
    }
  }
}
