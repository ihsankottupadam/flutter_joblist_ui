import 'package:flutter/material.dart';
import 'package:mechin_test/screens/empty_screen.dart';

import 'package:mechin_test/screens/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [HomeScreen(),EmptyScreen(),EmptyScreen()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.orange,unselectedItemColor: Colors.white30,backgroundColor: Colors.grey.shade800,items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: 'works'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'wallet'),
      ]),
    );
  }
}
