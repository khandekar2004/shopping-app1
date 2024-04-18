import 'package:flutter/material.dart';

class Plant {
  final String name;
  final String description;
  final String longDescription;
  final double price;
  final AssetImage image1;
  final AssetImage image2;
  final AssetImage image3;
  final int minHeight;
  final int maxHeight;
  final int minTemp;
  final int maxTemp;
  final String potType;

  Plant({
    required this.name,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.minHeight,
    required this.maxHeight,
    required this.minTemp,
    required this.maxTemp,
    required this.potType,
  });
}
