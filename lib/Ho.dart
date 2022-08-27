import 'package:flutter/material.dart';
import 'Jinx.dart';

class Ho extends StatefulWidget {
  const Ho({Key? key}) : super(key: key);
  @override
  State<Ho> createState() => _HoState();
}

Widget buildCard(String y, BuildContext context) => Container(
      width: 300,
      height: 200,
      child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Jinx()),
            );
          },
          child: Expanded(
              child: Container(
            height: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/' + y + '.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ))),
    );

class _HoState extends State<Ho> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              buildCard("1", context),
              buildCard("2", context),
              buildCard("3", context),
              buildCard("4", context),
              buildCard("5", context),
              buildCard("6", context),
            ]
            )
       );
  }
}
