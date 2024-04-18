/*
import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail_info_column.dart';
import 'package:plant_shop/models/plant.dart';

class DetailInfoRow extends StatelessWidget {
  final Plant plant;
  DetailInfoRow({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DetailInfoColumn(
          imageAsset: 'assets/height.png',
          title: 'Height',
          info: '${plant.minHeight} cm - ${plant.maxHeight} cm',
        ),
        DetailInfoColumn(
          imageAsset: 'assets/temperature.png',
          title: 'Temperature',
          info: '${plant.minTemp}°C - ${plant.maxTemp}°C',
        ),
        DetailInfoColumn(
          imageAsset: 'assets/pot.png',
          title: 'Pot',
          info: plant.potType,
        ),
      ],
    );
  }
}
*/
