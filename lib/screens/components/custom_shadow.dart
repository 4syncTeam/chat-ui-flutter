import 'package:flutter/material.dart';

class CustomShadow {
  static BoxShadow darkShadow({Offset customOffset = const Offset(3, 3)}) {
    return BoxShadow(
      color: Colors.black,
      offset: customOffset,
      spreadRadius: 0,
      blurRadius: 5,
    );
  }

  static BoxShadow lightShadow({Offset customOffset = const Offset(1.5, 1.5)}) {
    return BoxShadow(
      color: Colors.white.withOpacity(0.1),
      blurRadius: 2,
      spreadRadius: 0.025,
      offset: customOffset,
    );
  }
}
