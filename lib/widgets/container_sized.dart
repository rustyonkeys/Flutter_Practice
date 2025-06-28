import 'package:flutter/material.dart';  //to use container and sizebox


class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container and Sized box"),
      backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Container(           //container and sizedbox are placeholders for ex: children,child,widgets
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(topLeft:
            Radius.circular(20),
            bottomRight: Radius.circular(20),),
            boxShadow: [BoxShadow(blurRadius: 80,
            spreadRadius: 20,
            color: Colors.grey)]
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(30),
              color: Colors.red,
            ),
          ),
          ),
        ),
      );
            //Scaffold defines the starting of the app
  }
}
