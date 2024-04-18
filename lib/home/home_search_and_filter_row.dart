import 'package:flutter/material.dart';
import 'package:plant_shop/home/home_filter.dart';
import 'package:plant_shop/home/home_search.dart';

class HomeSearchAndFilterRow extends StatelessWidget {
  final FocusNode focusNode;

  HomeSearchAndFilterRow({required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeSearch(focusNode: focusNode),
        SizedBox(width: 10),
        HomeFilter(),
      ],
    );
  }
}
