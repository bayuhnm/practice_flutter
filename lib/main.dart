// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Travel',
        theme: ThemeData(),
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
