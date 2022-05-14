import 'package:datepicker_with_dropdown/datePicker/datepicker_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Datepicker with Dropdown',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DatePicker(),
    );
  }
}
