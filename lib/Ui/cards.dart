// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class cards extends StatefulWidget {
  String images;
  String titles;

  cards({
    Key? key,
    required this.images,
    required this.titles,
  }) : super(key: key);

  @override
  State<cards> createState() => _cards();
}

class _cards extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return (Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 0.2,
                offset: Offset(5, 5),
                color: Colors.grey.shade800)
          ]),
      child: Column(
        children: [Image.network(widget.images), Text(widget.titles)],
      ),
    ));
  }
}
