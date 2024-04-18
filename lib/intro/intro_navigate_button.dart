import 'package:flutter/material.dart';

class IntroNavigateButton extends StatelessWidget {
  final VoidCallback? onNavigatePressed;

  const IntroNavigateButton({Key? key, required this.onNavigatePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Call the parent's callback function when the button is pressed
        if (onNavigatePressed != null) {
          onNavigatePressed!();
        }
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
       // primary: Color(0xFF77994A),
        padding: EdgeInsets.all(38.0),
      ),
      child: const Icon(Icons.arrow_forward, size: 38.0),
    );
  }
}
