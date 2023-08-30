import 'package:flutter/material.dart';

import 'package:project/training/Login_Screen..dart';

void main() {
  runApp(Application());
}
class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Login_Screen(),
    );
  }
}