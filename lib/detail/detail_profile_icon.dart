import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the package

class DetailProfileIcon extends StatefulWidget {
  final Function()? onTap;

  const DetailProfileIcon({required this.onTap});

  @override
  _DetailProfileIconState createState() => _DetailProfileIconState();
}

class _DetailProfileIconState extends State<DetailProfileIcon>
    with SingleTickerProviderStateMixin {
  bool isIconLarge = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      right: 20,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: CircleBorder(),
          onTap: widget.onTap,
          splashColor: Colors.grey.shade100,
          child: Padding(
            padding: EdgeInsets.only(top: 3, right: 3), // Adjust padding here
            child: SizedBox(
              width: 50,
              height: 50,
              child: Center(
                child: SvgPicture.asset(
                  'assets/shopping-cart.svg',
                  width: 30,
                  height: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
