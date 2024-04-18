import 'package:flutter/material.dart';

import '../home/logincard.dart';

class IntroSkipButton extends StatelessWidget {
  final VoidCallback? onSkipPressed;

  const IntroSkipButton({Key? key, required this.onSkipPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Call the parent's callback function when tapped
            if (onSkipPressed != null) {
              onSkipPressed!();
            }
          },
          borderRadius: BorderRadius.circular(16.0),
          splashColor: Colors.blue.withAlpha(30),
          child: Row(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginCard() ,));
              }, child: Text("Login")),
              Container(
                padding: EdgeInsets.all(12.0),
                child: const Text(
                  '>>',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
