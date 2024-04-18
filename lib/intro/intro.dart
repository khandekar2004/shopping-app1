import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plant_shop/home/home.dart';
import 'package:plant_shop/intro/intro_column.dart';
import 'package:plant_shop/intro/intro_skip_button.dart';
import 'package:plant_shop/services/plant_service.dart';
import 'package:plant_shop/shared/loading.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key, required this.title, required this.plantService})
      : super(key: key);

  final String title;
  final PlantService plantService;

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _controller;
  int _currentPage = 0;
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentPage)
      ..addListener(() {
        setState(() {
          _currentPage = _controller.page!.round();
        });
      });

    // Initialize the opacity to 0 and then animate it to 1
    Timer(Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void handleSkipButtonPressed(BuildContext context) {
    // Show the LoadingScreen immediately
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: Loading(),
          );
        },
        transitionDuration:
            Duration(milliseconds: 0), // Adjust the duration as needed
      ),
    );

    // Delay for 3 seconds, which simulates a call to an API.

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Home(
              plants: widget.plantService
                  .getPlants()), // Replace with the page you want to navigate to
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: AnimatedOpacity(
        opacity: _opacity,
        duration: Duration(seconds: 1),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
              ], // Two shades of white
            ),
          ),
          child: Stack(
            children: [
              IntroColumn(
                controller: _controller,
                currentPage: _currentPage,
                onNavigatePressed: () {
                  handleSkipButtonPressed(context);
                },
              ),
              IntroSkipButton(
                onSkipPressed: () {
                  handleSkipButtonPressed(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
