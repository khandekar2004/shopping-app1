import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class PlantService {
  List<Plant> getPlants() {
    return [
      Plant(
        name: 'Blank Plant',
        description: 'No description available',
        price: 12.99,
        image1: AssetImage('assets/plant1.png'),
        image2: AssetImage('assets/plant_3.png'),
        image3: AssetImage('assets/plant_2.png'),
        longDescription:
            'The Blank Plant is a mysterious and rare specimen in the plant world. '
            'It is characterized by its unassuming appearance, with plain green leaves and '
            'no distinct features. Due to its enigmatic nature, it has become a conversation '
            'piece among plant enthusiasts. \n\n',
        minHeight: 10, // Add minimum height
        maxHeight: 30, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      ),
      Plant(
        name: 'Wall-Shelf',
        description: 'A beautiful and easy-to-care-for indoor walls.',
        price: 700.0,
        image1: AssetImage('assets/decore.jpg'),
        image2: AssetImage('assets/decore2.png'),
        image3: AssetImage('assets/decore3.png'),
        longDescription:
        "Room Type	Living Room\nProduct Care Instructions	Wipe with Dry Cloth\nNumber of Items	1",

        minHeight: 15, // Add minimum height
        maxHeight: 45, // Add maximum height
        minTemp: 20, // Add minimum temperature
        maxTemp: 28, // Add maximum temperature
        potType: 'Terracotta', // Add pot type
      ),
      Plant(
        name: 'Mainstays Hardwood Adirondack Chair - Natural',
        description: 'A low-maintenance and air-purifying houseplant.',
        price: 559,
        image1: AssetImage('assets/chair1.png'),
        image2: AssetImage('assets/chair2.png'),
        image3: AssetImage('assets/chair3.png'),
        longDescription:
            'Make the most of every season with the Mainstays Outdoor Wood Adirondack Chair.'
        'This all-weather chair is sturdily crafted for comfort anywhere you place it: deck, patio, porch, or poolside. '
        'The solid rubberwood Adirondack chair is a classic in the making, with a deep, angled seat, wide arms, and 6-slat back for comfortable support.\n\r\n ',
        minHeight: 12, // Add minimum height
        maxHeight: 45, // Add maximum height
        minTemp: 15, // Add minimum temperature
        maxTemp: 28, // Add maximum temperature
        potType: 'wooden', // Add pot type
      ),
      Plant(
        name: 'Utensil Set',
        description: 'Personalized wooden spoons are a fantastic way to tell someone you care about them..',
        price: 300.0,
        image1: AssetImage('assets/utensilset.png'),
        image2: AssetImage('assets/utensilset2.png'),
        image3: AssetImage('assets/utensilset3.png'),
        longDescription:
            'These spoons are the perfect gift for any cooking enthusiast!'
        'All utensils are sanded to a satiny finish and oiled before shipping.'
        'Utensils are sold in units of one.'
        'Spoons can be personalized with names, dates, phrases, even a persons own handwriting*.'
        'If you are looking for the complete set, look no further!.',

        minHeight: 8, // Add minimum height
        maxHeight: 20, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'wooden', // Add pot type
      ),
      Plant(
        name: 'wooden hair comb',
        description: 'Ayan Handmade Natural Pure Healthy Neem Wooden Comb Wide Tooth for Hair Growth,Anti-Dandruff Comb For Women And Men.',
        price: 299.0,
        image1: AssetImage('assets/comb1.png'),
        image2: AssetImage('assets/comb2.png'),
        image3: AssetImage('assets/comb3.png'),
        longDescription:
            'Made Up Of Natural Healthy Neem Wood, Combo Pack (Pack of 3)'
        'Safe for hairs, Reduces Hair fall, Light Weight'
        'Reduces hairfall, removes dandruff and itchy scalp problems Combing with wooden comb nourishes hair and improves blood circulation in the head'
      'Ideal for all Hair Types, Both Men And Women'
      'Wooden Handle Provides Better Grip',
        minHeight: 5, // Add minimum height
        maxHeight: 15, // Add maximum height
        minTemp: 20, // Add minimum temperature
        maxTemp: 28, // Add maximum temperature
        potType: 'wooden', // Add pot type
      ),
      Plant(
        name: 'Macrame Wall Hanging Shelf',
        description: 'Lush greenery to brighten up your space.',
        price: 500.0,
        image1: AssetImage('assets/wallhanging.png'),
        image2: AssetImage('assets/wall.png'),
        image3: AssetImage('assets/wall2.png'),
        longDescription:
            'Macrame Wall Hanging Shelf,'
        'Boho Handmade Floating Wooden Book Shelve for Home Decor, Bedroom,'
        'Living Room, Nursery, Decoration 10x5x22 Inch,1-Pcs, Off-White.',
        minHeight: 15, // Add minimum height
        maxHeight: 30, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      ),
      /*Plant(
        name: 'Macrame Wall Hanging Shelf',
        description: 'Lush greenery to brighten up your space.',
        price: 500.0,
        image1: AssetImage('assets/pic2.jpeg'),
        image2: AssetImage('assets/wall.png'),
        image3: AssetImage('assets/wall2.png'),
        longDescription:
        'Macrame Wall Hanging Shelf,'
            'Boho Handmade Floating Wooden Book Shelve for Home Decor, Bedroom,'
            'Living Room, Nursery, Decoration 10x5x22 Inch,1-Pcs, Off-White.',
        minHeight: 15, // Add minimum height
        maxHeight: 30, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      ),*/
      Plant(
        name: 'Macrame Wall Hanging Shelf',
        description: 'Lush greenery to brighten up your space.',
        price: 500.0,
        image1: AssetImage('assets/wallhanging.png'),
        image2: AssetImage('assets/wall.png'),
        image3: AssetImage('assets/wall2.png'),
        longDescription:
        'Macrame Wall Hanging Shelf,'
            'Boho Handmade Floating Wooden Book Shelve for Home Decor, Bedroom,'
            'Living Room, Nursery, Decoration 10x5x22 Inch,1-Pcs, Off-White.',
        minHeight: 15, // Add minimum height
        maxHeight: 30, // Add maximum height
        minTemp: 18, // Add minimum temperature
        maxTemp: 25, // Add maximum temperature
        potType: 'Ceramic', // Add pot type
      )
    ];
  }
}
