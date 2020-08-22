import 'package:TestApp/constants/colors.dart';
import 'package:TestApp/models/user_item_model.dart';
import 'package:TestApp/screens/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';

import 'search_bar.dart';
import 'user_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchBar(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(
                                userToChat: UserItemModel.DUMMY_LIST[index],
                              )),
                    );
                  },
                  child: UserItem(
                    user: UserItemModel.DUMMY_LIST[index],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: kTextColor.withOpacity(0.05),
                  thickness: 1,
                  indent: 80,
                );
              },
              itemCount: UserItemModel.DUMMY_LIST.length,
            ),
          ),
        ],
      ),
    );
  }
}
