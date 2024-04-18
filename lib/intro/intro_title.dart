import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 48,
        ),
        children: [
          TextSpan(text: 'Enjoy your\n'),
          TextSpan(text: 'Life with '),
          TextSpan(
            text: 'Organics',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
