import 'package:flutter/material.dart';
import 'AboutPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Page Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AboutPage(),
    );
  }
}
