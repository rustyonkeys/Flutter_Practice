import "package:flutter/material.dart";

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("StackWidget"),
      ),
      body:Container(
        color: Colors.green,
        child:Stack(
          children: [
            Positioned(top:130,
          // left: 40,
          // child:Container(color: Colors.amberAccent, width: 400,height: 400,)),
          //   Center(child:Container(color: Colors.blue, width: 200,height: 200,)),
          //   Center(child:Container(color: Colors.red, width: 130,height: 130,)),
            child:
             Container(child: Image.asset("assets/ProfileKirthi1.jpg"), width: 250,height: 250,),)

          ],
        ),
      ),
    );
  }
}
