import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Jinx extends StatefulWidget {
  const Jinx({Key? key}) : super(key: key);

  @override
  State<Jinx> createState() => _JinxState();
}

String x = "2";
String x1 = "The boys";
String x2 = "2019 ‧ Action fiction ‧ 3 seasons";
String x3 =
    "The Boys is surprisingly an amazing show, It's fun, violent, deliciously filthy, black-humored superhero genre deconstruction. What makes 'The Boys' so special and unique is its premise based on the Comic Book it gives the unorthodox concept for Superheroes. A very well-written show with a good sense of pace along with so many boundaries pushed. Both the seasons are gripping from start to finish, despite falling into few cliches. The action sequences are wildly entertaining, effing brutal, and sufficiently gory. Dialogues are fantastic, Direction is great, Cinematography is good, BGM is brilliant.";
String x4 = "https://www.youtube.com/watch?v=TO-_3tck2tg";
final Uri _url = Uri.parse('https://www.youtube.com/watch?v=TO-_3tck2tg');
final Uri _url2 = Uri.parse(
    'https://www.youtube.com/watch?v=KGbR7h_9UjI&list=RDKGbR7h_9UjI&start_radio=1');
final Uri _url3 = Uri.parse(
    'https://www.youtube.com/watch?v=jIRLTIpIe0o&list=RDKGbR7h_9UjI&index=2');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}

Future<void> _launchUr3() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}

class _JinxState extends State<Jinx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      image: AssetImage('images/' + x + '.jpg'),
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
                      x1,
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
                      x2,
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
                    x3,
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
                    onPressed: _launchUrl,
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
                    onPressed: _launchUrl2,
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
                    onPressed: _launchUr3,
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
      ),
    );
  }
}
