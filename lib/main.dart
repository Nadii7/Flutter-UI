import 'package:flutter/material.dart';
import 'package:flutter_ui/src/core/theme.dart';
import 'package:flutter_ui/src/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: MainScreen(),
    );
  }
}
