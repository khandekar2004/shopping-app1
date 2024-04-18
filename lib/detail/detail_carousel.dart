import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class DetailCarousel extends StatelessWidget {
  final PageController controller;
  final Plant plant; // New parameter to accept a single Plant object

  const DetailCarousel(
      {Key? key, required this.controller, required this.plant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          buildSizedBox(plant.image1, "plant-${plant.name}"),
          buildSizedBox(plant.image2, "plant-${plant.name}"),
          buildSizedBox(plant.image3, "plant-${plant.name}"),
        ],
      ),
    );
  }

  Padding buildSizedBox(AssetImage assetImage, String heroTag) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Hero(
        // Wrap the Image widget with Hero
        tag: heroTag, // Unique tag for this Hero
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(12.0), // Adjust the radius as needed
          child: Image(
            image: assetImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
