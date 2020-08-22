import 'package:TestApp/constants/colors.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  NavBarItem({
    @required this.itemName,
    @required this.icon,
    @required this.changeSelect,
    this.selected = false,
  });

  final IconData icon;
  final String itemName;
  final Function(String itemName) changeSelect;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: () => this.changeSelect(this.itemName),
        icon: Icon(
          this.icon,
          color: selected ? kSecondaryBackgroundColor : kTextColor,
        ),
      ),
    );
  }
}
