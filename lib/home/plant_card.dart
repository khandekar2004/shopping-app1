import 'package:flutter/material.dart';
import 'package:plant_shop/models/plant.dart';

class PlantCard extends StatefulWidget {
  final Plant plant;
  final Function(Plant) onCardClick;

  PlantCard({required this.plant, required this.onCardClick});

  @override
  _PlantCardState createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  bool isHeartFilled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onCardClick(widget.plant);
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Hero(
                    tag:
                        'plant-${widget.plant.name}', // Unique tag for each plant
                    child: Image(
                        image: widget.plant.image1,
                        fit: BoxFit.cover), // Use AssetImage to load the image
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                child: Text(
                  widget.plant.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            if (widget.plant.description.isEmpty)
              SizedBox(
                height: 20,
              ),
            if (widget.plant.description.isNotEmpty)
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 4.0, bottom: 8.0),
                  child: Text(
                    widget.plant.description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.plant.price.toString(), // Convert price to string
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        isHeartFilled ? Icons.favorite : Icons.favorite_border,
                        color: isHeartFilled
                            ? Colors.green.shade400
                            : Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          isHeartFilled = !isHeartFilled;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
