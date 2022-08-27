import 'package:flutter/material.dart';

class WE extends StatefulWidget {
  const WE({Key? key}) : super(key: key);

  @override
  State<WE> createState() => _WE();
}

class _WE extends State<WE> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(153, 50, 136, 0.875),
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 200,
          child: Center(
            child: Container(
              width: 200,
              height: 100,
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
