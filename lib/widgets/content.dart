import 'package:flutter/material.dart';
import 'package:practice_ui/widgets/color.dart';


class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 1,
            left: 20,
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage("assets/chip-1.png"),
              )
            ),),
          Positioned(
            top: 1,
            right: 20,
            child: Container(
                // decoration: BoxDecoration(boxShadow: AppColors.dupli),
                width: 100,
                height: 100,
                child: Image(
                  image: AssetImage("assets/img.png"),

                )
            ),),
          Positioned(
              bottom: 35,
              right: 50,
              child: Container(
                child: Text("Axis Bank",
                    style: TextStyle(color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w300)),
              )
          ),
          Positioned(
            top: 75,
            left: 20,
            child: Container(
              child: Text("It's where you want to be",
              style: TextStyle(color: Colors.grey,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400),),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("4000  1234  5678  9010",
                  style: TextStyle(color: Colors.grey,
                      // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),),

           Text("01/23",
                  style: TextStyle(color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
             SizedBox(height: 20),

             Text("Kirthi G Shetty",
                  style: TextStyle(color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.w400)),]),)


        ],

      ),
    );
  }
}
