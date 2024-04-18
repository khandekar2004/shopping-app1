import 'package:flutter/material.dart';
import 'package:plant_shop/home/home_app_bar.dart';
import 'package:plant_shop/home/home_gridview.dart';
import 'package:plant_shop/home/home_search_and_filter_row.dart';
import 'package:plant_shop/models/plant.dart';

class Home extends StatelessWidget {
  final List<Plant> plants;

  Home({Key? key, required this.plants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    return Scaffold(
      backgroundColor: Color(0xFFe8e8e9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(
          title: 'Search Products',
          onBackTap: () {
            Navigator.of(context).pop();
          },
          onActionTap: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: Column(
          children: [
            HomeSearchAndFilterRow(focusNode: focusNode),
            SizedBox(height: 20),
            Expanded(
              child: HomeGridView(plants: plants),
            ),
          ],
        ),
      ),
    );
  }
}
