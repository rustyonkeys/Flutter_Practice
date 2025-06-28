import "package:flutter/material.dart";


class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.purple,
          title:Text("AlertWidget")),
      body: Center(child: ElevatedButton(onPressed: (){}, child: Text("Show Alert"))),
    );
  }
}


// Future<void> _showMyDialog(BuildContext context)async{
//   return showDialog(context: context, builder: (BuildContext context{
//     return AlertDialog()
//   }));
// }




// Not completed completly