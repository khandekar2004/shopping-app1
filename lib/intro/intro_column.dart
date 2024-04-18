import 'package:flutter/material.dart';
import 'package:plant_shop/intro/intro_carousel.dart';
import 'package:plant_shop/intro/intro_carousel_indicator.dart';
import 'package:plant_shop/intro/intro_navigate_button.dart';
import 'package:plant_shop/intro/intro_title.dart';

class IntroColumn extends StatelessWidget {
  final PageController controller;
  final int currentPage;
  final VoidCallback? onNavigatePressed;

  const IntroColumn({
    Key? key,
    required this.onNavigatePressed,
    required this.controller,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          IntroCarousel(controller: controller),
          const SizedBox(height: 10),
          IntroCarouselIndicator(currentPage: currentPage),
          const SizedBox(height: 20),
          const SizedBox(height: 30),
          const RichTextWidget(),
          const SizedBox(height: 60),
          IntroNavigateButton(
            onNavigatePressed: onNavigatePressed, // Call the callback here
          ),
        ],
      ),
    );
  }
}
