import 'package:flutter/material.dart';
import 'package:mechin_test/screens/home.dart';
import 'package:mechin_test/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
