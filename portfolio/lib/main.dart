import 'package:flutter/material.dart';
import 'package:portfolio/modules/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farhan Zuhdi',
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}
