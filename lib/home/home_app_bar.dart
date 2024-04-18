import 'package:flutter/material.dart';
import 'package:plant_shop/home/home_back_button.dart';
import 'package:plant_shop/home/home_profile_icon.dart';

class HomeAppBar extends StatelessWidget {
  final String title;
  final Function()? onBackTap;
  final Function()? onActionTap;

  const HomeAppBar({
    required this.title,
    this.onBackTap,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Stack(
        children: [
          Container(
            color: Colors.transparent,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          if (onBackTap != null)
            HomeBackButton(
              onTap: onBackTap,
            ),
          if (onActionTap != null)
            HomeProfileIcon(
              onTap: onActionTap,
            ),
        ],
      ),
    );
  }
}
