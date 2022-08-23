import 'package:flutter/material.dart';
import 'package:movie_app/cards.dart';
import '../models/movie.dart';
import '../onbording.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox( height: MediaQuery.of(context).size.height,
          child: Column(
      children: [
          Container(
            width: 200,
            height: 200,
            child: cards(
                images:
                    "https://images.unsplash.com/photo-1607603750909-408e193868c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                titles: "hello"),
          ),
          cards(
              images:
                  "https://images.unsplash.com/photo-1607603750909-408e193868c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
              titles: "hello"),
      ],
    ),
        ));
  }
}
