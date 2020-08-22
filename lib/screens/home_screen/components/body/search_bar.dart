import 'package:TestApp/constants/colors.dart';
import 'package:TestApp/screens/components/custom_shadow.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: kBackgroundDarkerColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          CustomShadow.lightShadow(),
          CustomShadow.lightShadow(),
          CustomShadow.lightShadow(),
          CustomShadow.lightShadow(),
          CustomShadow.darkShadow(customOffset: Offset(-0.5, -0.5)),
        ],
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
            hintText: 'search',
          ),
        ),
      ),
    );
  }
}
