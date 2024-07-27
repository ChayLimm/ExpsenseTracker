import 'package:flutter/material.dart';
import 'package:expense_tracker/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense tracker',
      home: Home(),
    );
  }
}


