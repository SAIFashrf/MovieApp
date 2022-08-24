import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Jinx()));
}

class Jinx extends StatefulWidget {
  const Jinx({Key? key}) : super(key: key);

  @override
  State<Jinx> createState() => _JinxState();
}

class _JinxState extends State<Jinx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 48.0),
            IconButton(
              icon: Icon(
                Icons.filter_list,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(177, 24, 75, 1),
        child: Icon(Icons.home),
        onPressed: () {},
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/2.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 100),
                  width: 200,
                  height: 45,
                  child: Text(
                    "The boys",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'San Fransisco',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 100),
                  width: 200,
                  height: 10,
                  child: Text(
                    "2019 ‧ Action fiction ‧ 3 seasons",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(255, 175, 174, 174),
                        fontFamily: 'San Fransisco'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 118),
                child: Icon(
                  Icons.star,
                  color: Colors.pink,
                  size: 35.0,
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.pink,
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Colors.pink,
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Color.fromARGB(255, 95, 92, 93),
                size: 35.0,
              ),
              Icon(
                Icons.star,
                color: Color.fromARGB(255, 95, 92, 93),
                size: 35.0,
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 380,
                height: 210,
                child: Text(
                  "The Boys is surprisingly an amazing show, It's fun, violent, deliciously filthy, black-humored superhero genre deconstruction. What makes 'The Boys' so special and unique is its premise based on the Comic Book it gives the unorthodox concept for Superheroes. A very well-written show with a good sense of pace along with so many boundaries pushed. Both the seasons are gripping from start to finish, despite falling into few cliches. The action sequences are wildly entertaining, effing brutal, and sufficiently gory. Dialogues are fantastic, Direction is great, Cinematography is good, BGM is brilliant.",
                  textAlign: TextAlign.center,
                  //maxLines: 3,
                  //overflow: TextOverflow.clip,
                  style: TextStyle(
                      fontSize: 12.5,
                      color: Color.fromRGBO(241, 241, 241, 1),
                      fontFamily: 'San Fransisco'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 385,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => null,
                  label: const Text('Watch Trailer'),
                  icon: const Icon(Icons.camera),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 167, 68, 101),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 185,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => null,
                  icon: const Icon(Icons.local_movies_outlined),
                  label: const Text('  Watch  '),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(177, 24, 75, 1),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Container(
                width: 185,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () => null,
                  icon: const Icon(Icons.download),
                  label: const Text('Download'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(177, 24, 75, 1),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
