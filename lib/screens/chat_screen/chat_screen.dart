import 'package:TestApp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:TestApp/models/user_item_model.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({
    @required this.userToChat,
  });

  final UserItemModel userToChat;

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            '${widget.userToChat.name}',
            style: TextStyle(color: kBackgroundColor),
          ),
        ),
      ),
    );
  }
}
