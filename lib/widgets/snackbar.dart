import "package:flutter/material.dart";

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      title: Text("SnackbarWidget"),),
      body: Container(
        child: Center(
            child: ElevatedButton(onPressed: ()
            {
              final snackbar = SnackBar(
              behavior: SnackBarBehavior.floating,
              action: SnackBarAction(label: "undo", textColor: Colors.white, onPressed: (){}),
              duration: Duration(milliseconds: 2000),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              backgroundColor:Colors.purple,content:Text("It is a snackbar",style: TextStyle(color: Colors.white),));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
                child:Text("Show snackbar"))),
      ),
    );
  }
}
