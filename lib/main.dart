import 'package:flutter/material.dart';
import 'package:plant_shop/intro/intro.dart';
import 'package:plant_shop/services/plant_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plantService = PlantService();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'organic Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroPage(
        title: 'organic shop',
        plantService: plantService,
      ),
    );
  }
}
