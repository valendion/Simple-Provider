import 'dart:js';

import 'package:flutter/material.dart';

import '../../view/ui/detail_page.dart';
import '../../view/ui/home_page.dart';

var routes = <String, Widget Function(BuildContext)>{
  '/': (context) => const HomePage(),
  '/detailScreen': (context) => const DetailPage()
};
