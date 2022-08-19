
import 'package:flutter/material.dart';
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
      body: Onboarding(number: 3,images: data,titles: data,content: data,txtColor: Colors.white,),
    );
  }
}
