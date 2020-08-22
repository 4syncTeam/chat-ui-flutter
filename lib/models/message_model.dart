import 'package:flutter/material.dart';

class MessageModel {
  String message;
  DateTime sentTime;

  MessageModel({
    @required this.message,
    @required this.sentTime,
  });
}
