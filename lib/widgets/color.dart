import 'package:flutter/material.dart';

class AppColors {
  static Color bgColor = Colors.black;

  static List<BoxShadow> shadows= [
    BoxShadow(
      color: Colors.grey.withAlpha(128),
      blurRadius: 25,
      spreadRadius: -5,
      offset: Offset(-5, -5)
    ),
    BoxShadow(
        color: Colors.black87.withAlpha(128),
        blurRadius: 20,
        spreadRadius: 2,
        offset: Offset(7, 7)
    )
  ];
  // static List<BoxShadow> dupli= [
  //   BoxShadow(
  //       color: Colors.grey.withAlpha(128),
  //       blurRadius: 10,
  //       spreadRadius: -3,
  //       offset: Offset(-5, -5)
  //   ),
  //   BoxShadow(
  //       color: Colors.black87.withAlpha(128),
  //       blurRadius: 10,
  //       spreadRadius: 2,
  //       offset: Offset(7, 7)
  //   )
  // ];
}