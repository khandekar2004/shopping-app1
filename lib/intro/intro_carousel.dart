import 'package:flutter/material.dart';

class IntroCarousel extends StatelessWidget {
  final PageController controller;

  const IntroCarousel({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: PageView(
        controller: controller,
        children: [
          buildSizedBox('assets/plant_1.png'),
          buildSizedBox('assets/plant_2.png'),
          buildSizedBox('assets/plant_3.png'),
        ],
      ),
    );
  }

  SizedBox buildSizedBox(String assetName) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Image.asset(
        assetName,
        fit: BoxFit.cover,
      ),
    );
  }
}
