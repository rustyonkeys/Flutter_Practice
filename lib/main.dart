import "package:flutter/material.dart";
// import "package:practice_ui/widgets/alert.dart";
// import "package:practice_ui/widgets/bottomnav.dart";
// import "package:practice_ui/widgets/drawer.dart";
// import "package:practice_ui/widgets/dropdown.dart";
import "package:practice_ui/widgets/form.dart";
import "package:practice_ui/widgets/stack.dart";
// import "package:practice_ui/widgets/rowscols.dart";
// import "package:practice_ui/widgets/container_sized.dart";
// import "package:practice_ui/widgets/snackbar.dart";
// import 'package:practice_ui/widgets/dissmisible.dart';
import "package:practice_ui/widgets/card.dart";
import "package:practice_ui/widgets/tabbar.dart";



void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,

      ),

      home:TabBarWidget(),
    );
  }
}

