import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail_price_and_cart_row.dart';
import 'package:plant_shop/detail/detail_info_row.dart';
import 'package:plant_shop/models/plant.dart';

import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class DetailBottomNavigationBar extends StatelessWidget {
  final Plant plant;

  const DetailBottomNavigationBar({required this.plant});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFF77994A),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          DetailPriceAndCartRow(plant: plant),
        ],
      ),
    );
  }
}
