import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail_app_bar.dart';
import 'package:plant_shop/detail/detail_bottom_navigation_bar.dart';
import 'package:plant_shop/detail/detail_column.dart';
import 'package:plant_shop/models/plant.dart';

class Detail extends StatefulWidget {
  final Plant plant;

  Detail({required this.plant});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late PageController _controller;
  int _currentPage = 0; // Or initialize it with another value you prefer

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentPage)
      ..addListener(() {
        setState(() {
          _currentPage = _controller.page!.round();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: DetailAppBar(
          title: '',
          onBackTap: () {
            Navigator.of(context).pop();
          },
          onActionTap: () {},
        ),
      ),
      body: DetailColumn(
        plant: widget.plant,
        controller: _controller,
        currentPage: _currentPage,
      ),
      bottomNavigationBar: DetailBottomNavigationBar(
        plant: widget.plant,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }
}
