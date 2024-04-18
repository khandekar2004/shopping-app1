import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail_carousel.dart';
import 'package:plant_shop/detail/detail_carousel_indicator.dart';
import 'package:plant_shop/models/plant.dart';

class DetailColumn extends StatelessWidget {
  final PageController controller;
  final int currentPage;
  final Plant plant;

  const DetailColumn({
    Key? key,
    required this.plant,
    required this.controller,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            CrossAxisAlignment.start, // Change to CrossAxisAlignment.start
        children: [
          Stack(
            children: [
              DetailCarousel(controller: controller, plant: plant),
              Positioned(
                bottom: 10,
                right: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DetailCarouselIndicator(currentPage: currentPage),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              plant.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Display Plant Long Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              plant.longDescription,
              textAlign: TextAlign.left, // Align text to the left
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
