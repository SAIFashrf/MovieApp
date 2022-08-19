// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, override_on_non_overriding_member, unused_import, sized_box_for_whitespace, must_be_immutable, unused_local_variable
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/*
  don't forget to add this -> smooth_page_indicator: ^1.0.0+2  to dependance
  and import 'package:smooth_page_indicator/smooth_page_indicator.dart';
  then take the code :)
*/
class Onboarding extends StatefulWidget {
  int number;
  List images;
  List titles;
  List content;
  Color? backgroundColor;
  Color? activeDotColor;
  Color? dotColor;
  Color? txtColor;
  Onboarding({
    Key? key,
    required this.number,
    required this.images,
    required this.titles,
    required this.content,
    this.backgroundColor,
    this.activeDotColor,
    this.dotColor,
    this.txtColor,
  }) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: size.height - 80,
              color: widget.backgroundColor ?? Colors.black,
              child: PageView.builder(
                  itemCount: widget.number,
                  controller: controller,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Container(
                          height: 400,
                          width: 400,
                          child: Image.network(data[i].images.toString()),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /// Title
                              Container(
                                child: Text(data[i].titles.toString(),style: TextStyle(fontSize: 25,color: widget.txtColor),)
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 30),
                                //// Content
                                child: Text(data[i].content.toString(),style: TextStyle(fontSize: 16,color: widget.txtColor),)
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
              )
          ),
          ////// Dots
          Container(
            height: 80,
            color: widget.backgroundColor ?? Colors.black,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: widget.number,
                effect: JumpingDotEffect(
                    dotColor: widget.dotColor ?? Colors.blue,
                    activeDotColor: widget.activeDotColor ?? Colors.white,
                    dotWidth: 8,
                    dotHeight: 8,
                    verticalOffset: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}