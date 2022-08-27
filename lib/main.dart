<<<<<<< badriiii
import 'package:flutter/material.dart';
import 'Jinx.dart';
import 'Ho.dart';
import 'Welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int selectedPage = 0;
  final _pageOptions = [WE(), Ho(), Jinx()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(160, 190, 27, 1),
          currentIndex: selectedPage,
          onTap: (int index) {
            setState(() {
              selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.start), label: 'Start'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          ],
          selectedItemColor: Color.fromRGBO(233, 229, 229, 0.882),
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
=======
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Ui/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}
>>>>>>> main
