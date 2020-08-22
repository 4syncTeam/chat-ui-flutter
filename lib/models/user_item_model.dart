import 'dart:math';

import 'package:flutter/material.dart';

import 'package:TestApp/models/message_model.dart';

class UserItemModel {
  int id;
  String name;
  String imagePath;
  MessageModel lastMessage;
  int notReadMessagesCount;

  UserItemModel({
    @required this.id,
    @required this.name,
    @required this.imagePath,
    @required this.lastMessage,
    this.notReadMessagesCount,
  });

  static List<UserItemModel> DUMMY_LIST = [
    for (var i = 1; i < 10; i++)
      UserItemModel(
        id: i,
        name: 'Person Personian $i',
        imagePath: 'assets/images/profile.jpg',
        lastMessage: new MessageModel(
          message: 'hey baby $i',
          sentTime: DateTime.now(),
        ),
        notReadMessagesCount: (i < 5) ? Random().nextInt(150) : 0,
      ),
  ];
}
