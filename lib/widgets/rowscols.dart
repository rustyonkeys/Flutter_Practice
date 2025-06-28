import "package:flutter/material.dart";



class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;  // Takes the entire size of the mobile screen
    var h = MediaQuery.of(context).size.height; // Takes the entire height of the mobile screen
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Rows and Columns")),
      body: Container(
        height: h,
        width: w,
        color: Colors.purpleAccent,
        child: Row(
          children: [
            ]
        ),
      ),
    );
  }
}

