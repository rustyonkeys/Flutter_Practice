import 'package:flutter/material.dart';
import 'package:practice_ui/widgets/alert.dart';
import 'package:practice_ui/widgets/dissmisible.dart';
import 'package:practice_ui/widgets/rowscols.dart';
import 'package:practice_ui/widgets/snackbar.dart';




class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int selectedindex =0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void onTapped(int index){
    setState(() {
      selectedindex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(title: Text("BottomNav"),
      //   backgroundColor: Colors.purple,),
      body:
      PageView(
        controller: pageController,
        children: [
          DismissibleWdget(),
          SnackbarWidget(),
          Rowscols(),
          AlertWidget(),

      ],),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      currentIndex: selectedindex,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      onTap: onTapped,),
    );
  }
}
