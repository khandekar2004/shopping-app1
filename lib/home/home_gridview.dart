import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail.dart';
import 'package:plant_shop/home/home_app_bar.dart';
import 'package:plant_shop/home/plant_card.dart';
import 'package:plant_shop/models/plant.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeGridView extends StatelessWidget {
  final List<Plant> plants;

  HomeGridView({required this.plants});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index) {
          double screenHeight = MediaQuery.of(context).size.height;
          double calculatedHeight = index == 0
              ? screenHeight * 0.2
              : screenHeight * 0.4; // 10% and 20% of screen height
          if (index == 0) {
            return Container(
                height: calculatedHeight,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      'Found',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${plants.length - 1} Results',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ));
          }

          return Container(
            height: calculatedHeight,
            color: Colors.transparent,
            child: PlantCard(
              plant: plants[index],
              onCardClick: (p0) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Detail(plant: plants[index]),
                  ),
                );
              },
            ),
          );
        },
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}
