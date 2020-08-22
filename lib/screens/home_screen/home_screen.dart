import 'package:flutter/material.dart';
import 'package:TestApp/constants/colors.dart';

import 'components/body/body.dart';
import 'components/button_nav_bar/buttom_nav_bar.dart';
import 'components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: CustomAppBar(),
      ),
      body: Body(),
      bottomNavigationBar: ButtomNavBar(),
    );
  }
}
