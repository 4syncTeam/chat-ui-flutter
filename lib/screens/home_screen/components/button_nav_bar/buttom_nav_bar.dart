import 'package:TestApp/constants/colors.dart';
import 'package:TestApp/screens/components/custom_shadow.dart';
import 'package:TestApp/screens/home_screen/components/button_nav_bar/natv_bar_item.dart';
import 'package:flutter/material.dart';

class ButtomNavBar extends StatefulWidget {
  @override
  _ButtomNavBarState createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  String selectedItem;

  @override
  void initState() {
    super.initState();
    this.selectedItem = 'message';
  }

  void changeItem(String itemName) {
    setState(() {
      this.selectedItem = itemName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 0, 40, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        color: kBackgroundDarkerColor,
        boxShadow: [
          CustomShadow.darkShadow(),
          CustomShadow.lightShadow(),
          CustomShadow.lightShadow(),
          CustomShadow.lightShadow(customOffset: Offset(-3, -3)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            itemName: 'message',
            icon: Icons.message,
            selected: selectedItem == 'message',
            changeSelect: this.changeItem,
          ),
          NavBarItem(
            itemName: 'camera',
            icon: Icons.camera,
            selected: selectedItem == 'camera',
            changeSelect: this.changeItem,
          ),
          NavBarItem(
            itemName: 'scanner',
            icon: Icons.scanner,
            selected: selectedItem == 'scanner',
            changeSelect: this.changeItem,
          ),
          NavBarItem(
            itemName: 'settings',
            icon: Icons.settings,
            selected: selectedItem == 'settings',
            changeSelect: this.changeItem,
          ),
        ],
      ),
    );
  }
}
