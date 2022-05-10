import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import '../../view_models/UsersViewModel.dart';

final GetIt locator = GetIt.instance;

void setupInjector() {
  //Registration ViewModel
  locator.registerLazySingleton<UserViewModel>(() => UserViewModel());
}
