import 'package:flutter/material.dart';
import 'package:plant_shop/detail/detail_profile_icon.dart';
import 'package:plant_shop/home/home_back_button.dart';
import 'package:plant_shop/home/logincard.dart';

class DetailAppBar extends StatelessWidget {
  final String title;
  final Function()? onBackTap;
  final Function()? onActionTap;

  const DetailAppBar({
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
          if (onBackTap != null)
            HomeBackButton(
              onTap: onBackTap,
            ),
          if (onActionTap != null)
            DetailProfileIcon(
              onTap: onActionTap,
            ),
        ],
      ),
    );
  }
}
