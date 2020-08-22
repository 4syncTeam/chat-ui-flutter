import 'package:TestApp/screens/components/custom_shadow.dart';
import 'package:flutter/material.dart';

import 'package:TestApp/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    CustomShadow.darkShadow(),
                    CustomShadow.lightShadow(customOffset: Offset(-4, -1)),
                  ],
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  radius: 16,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Text('Chats'),
            ],
          ),
          Container(
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                CustomShadow.darkShadow(),
                CustomShadow.lightShadow(customOffset: Offset(-4, -1)),
              ],
            ),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2,
              fillColor: kSecondaryBackgroundColor,
              shape: CircleBorder(),
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
