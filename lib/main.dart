// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter/detail_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

