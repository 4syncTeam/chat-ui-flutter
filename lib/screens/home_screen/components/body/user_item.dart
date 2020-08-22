import 'package:TestApp/constants/colors.dart';
import 'package:TestApp/screens/components/custom_shadow.dart';
import 'package:flutter/material.dart';

import 'package:TestApp/models/user_item_model.dart';

class UserItem extends StatelessWidget {
  UserItem({
    @required this.user,
  });

  final UserItemModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          userHeader(),
          userTime(),
        ],
      ),
    );
  }

  Widget userHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
            CustomShadow.darkShadow(),
            CustomShadow.lightShadow(customOffset: Offset(-4, -2)),
          ]),
          child: CircleAvatar(
            backgroundImage: AssetImage(user.imagePath),
          ),
        ),
        SizedBox(
          width: 14,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: TextStyle(
                color: kTextColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              user.lastMessage.message,
              style: TextStyle(
                color: kTextColor,
                fontSize: 8,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget userTime() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${user.lastMessage.sentTime.hour}:${user.lastMessage.sentTime.minute}',
          style: TextStyle(
            color: user.notReadMessagesCount > 0
                ? kSecondaryBackgroundColor
                : kTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: user.notReadMessagesCount > 0
                ? kSecondaryBackgroundColor
                : Colors.transparent,
            boxShadow: [
              user.notReadMessagesCount > 0
                  ? CustomShadow.lightShadow(customOffset: Offset(-3, -1.5))
                  : BoxShadow(color: Colors.transparent),
              user.notReadMessagesCount > 0
                  ? CustomShadow.darkShadow()
                  : BoxShadow(color: Colors.transparent),
            ],
          ),
          child: Text(
            user.notReadMessagesCount < 99
                ? user.notReadMessagesCount == 0
                    ? ' '
                    : '${user.notReadMessagesCount}'
                : '99+',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
