import 'package:flutter/material.dart';

class HomeBackButton extends StatelessWidget {
  final Function()? onTap;

  const HomeBackButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 37,
      left: 20,
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }
}
