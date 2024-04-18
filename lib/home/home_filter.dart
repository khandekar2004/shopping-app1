import 'package:flutter/material.dart';
import 'package:plant_shop/home/home_filter_icon.dart';

class HomeFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: IconButton(
          icon: HomeFilterIcon(),
          onPressed: () {
            // Your filter action here
          },
        ),
      ),
    );
  }
}
