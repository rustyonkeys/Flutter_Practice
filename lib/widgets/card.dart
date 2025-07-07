import "package:flutter/material.dart";
import "package:practice_ui/widgets/content.dart";

import "color.dart";

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(title: Text("Card View"),),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows
          ),
          child: Content(),
        ),
      ),
    );
  }
}
