import 'package:flutter/cupertino.dart';

class AppLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const CupertinoActivityIndicator(),
      ),
    );
  }
}
