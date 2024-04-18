import 'package:flutter/material.dart';

class IntroCarouselIndicator extends StatelessWidget {
  final int currentPage;

  const IntroCarouselIndicator({Key? key, required this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: (currentPage == index) ? 30 : 10, // Updated this line
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            color: currentPage == index ? Color(0xFF77994A) : Colors.grey,
          ),
        ),
      ),
    );
  }
}
