import 'package:flutter/material.dart';

class DetailInfoColumn extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String info;
  DetailInfoColumn({
    required this.imageAsset,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageAsset,
          color: Colors.white,
          height: 30,
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        Text(
          info,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
