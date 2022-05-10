import 'package:flutter/material.dart';
import 'package:latihan_mvvm/utils/ci/injector.dart';
import 'package:latihan_mvvm/utils/routes/routes.dart';
import 'package:latihan_mvvm/view_models/UsersViewModel.dart';
import 'package:provider/provider.dart';

void main() {
  setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => locator<UserViewModel>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MVVM',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          primarySwatch: Colors.blue,
        ),
        routes: routes,
        initialRoute: '/',
      ),
    );
  }
}
