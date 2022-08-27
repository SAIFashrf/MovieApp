// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, override_on_non_overriding_member, unused_import, sized_box_for_whitespace, must_be_immutable, unused_local_variable, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:movie_app/Ui/Intro/intro_page1.dart';
import 'package:movie_app/models/movie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../Jinx.dart';
import '../home.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';

/*
  don't forget to add this -> smooth_page_indicator: ^1.0.0+2  to dependence
  and import 'package:smooth_page_indicator/smooth_page_indicator.dart';
  then take the code :)
*/
class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final _controller = PageController();
  bool lastPage = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (value) {
            setState(() {
              lastPage = value == 2;
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip button
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("skip")),
                // indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                // next and done buttons
                lastPage ? GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Jinx(),));
                        },
                        child: Text("done"))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("next"))
              ],
            ))
      ],
    );
  }
}