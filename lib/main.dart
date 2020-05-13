import 'package:flutter/material.dart';
import 'package:investing_app/pages/home_page.dart';
import 'package:investing_app/utils/constants.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: MAIN_DARK
      ),
      home: HomePage(),
    );
  }
}
