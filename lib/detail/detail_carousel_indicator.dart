import 'package:flutter/material.dart';

class DetailCarouselIndicator extends StatelessWidget {
  final int currentPage;

  const DetailCarouselIndicator({Key? key, required this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(vertical: 5),
          height: (currentPage == index) ? 30 : 10, // Updated this line
          width: 10,
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
