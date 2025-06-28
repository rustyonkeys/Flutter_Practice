import "package:flutter/material.dart";

class DismissibleWdget extends StatefulWidget {
  const DismissibleWdget({super.key});

  @override
  State<DismissibleWdget> createState() => _DismissibleWdgetState();
}

class _DismissibleWdgetState extends State<DismissibleWdget> {
  List<String> tasks = ['github update', 'ui update', 'linkedin optimize', 'job finding'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("DissmisibleWidget"),),
      body: ListView.builder(
        itemCount: tasks.length,                      //we use ListView.builder when the list is dynamic
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Dismissible(
            onDismissed: (direction){
              if(direction == DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(action: SnackBarAction(label: "undo", onPressed:(){} ),content: Text("$task Deleted"),
                backgroundColor: Colors.red));
              }
              else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$task Archived"),
                backgroundColor: Colors.green,));
              }
            },
            key: Key(task),
            background: Container(
              color:Colors.red,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text("Delete",style: TextStyle(fontWeight: FontWeight.bold),),),
            secondaryBackground: Container(color: Colors.green,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20) ,
              child: Text("Archive", style: TextStyle(fontWeight: FontWeight.bold),),),
            child: Card(
              child: ListTile(
                  title: Text(task)
                ),
            ),

          ); },),
    );
  }
}



// import 'package:flutter/material.dart';
//
// class DismissibleWidget extends StatefulWidget {
//   const DismissibleWidget({super.key});
//
//   @override
//   State<DismissibleWidget> createState() => _DismissibleWidgetState();
// }
//
// class _DismissibleWidgetState extends State<DismissibleWidget> {
//   List<String> tasks = ['github update', 'ui update', 'linkedin optimize', 'job finding'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: Text("DismissibleWidget"),
//       ),
//       body: ListView.builder(
//         itemCount: tasks.length,
//         itemBuilder: (context, index) {
//           final task = tasks[index];
//           return Dismissible(
//             key: Key(task),
//             direction: DismissDirection.horizontal,
//             onDismissed: (direction) {
//               // Store removed item and index
//               final removedTask = task;
//               final removedIndex = index;
//
//               setState(() {
//                 tasks.removeAt(index);
//               });
//
//               // Show snackbar with undo option
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text(
//                     direction == DismissDirection.startToEnd
//                         ? "$removedTask Deleted"
//                         : "$removedTask Archived",
//                   ),
//                   backgroundColor: direction == DismissDirection.startToEnd ? Colors.red : Colors.green,
//                   action: SnackBarAction(
//                     label: "UNDO",
//                     textColor: Colors.white,
//                     onPressed: () {
//                       setState(() {
//                         tasks.insert(removedIndex, removedTask);
//                       });
//                     },
//                   ),
//                 ),
//               );
//             },
//             background: Container(
//               color: Colors.red,
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Text("Delete", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
//             ),
//             secondaryBackground: Container(
//               color: Colors.green,
//               alignment: Alignment.centerRight,
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Text("Archive", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
//             ),
//             child: Card(
//               child: ListTile(
//                 title: Text(task),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }




