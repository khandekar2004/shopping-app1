import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  final FocusNode focusNode;

  HomeSearch({required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: AnimatedBuilder(
            animation: focusNode,
            builder: (BuildContext context, Widget? child) {
              return Card(
                elevation: focusNode.hasFocus ? 8 : 4,
                color: focusNode.hasFocus ? Colors.green.shade50 : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: child!,
              );
            },
            child: TextField(
              cursorColor: Color(0xFF77994A),
              focusNode: focusNode,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                      BorderSide.none, // Hide the border to match with the Card
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF77994A),
                ),
                // Set the cursor color to red
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.green.shade50),
                ),
              ),
            )));
  }
}
