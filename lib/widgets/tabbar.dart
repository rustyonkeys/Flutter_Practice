import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,  // App start with status
        // length: 3,
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade600,
            title: Text("WhatsApp",
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),),

            bottom: TabBar(indicatorColor: Colors.red,
                isScrollable: true,
                tabs: [
              Tab(text: "Calls", icon: Icon(Icons.call)),
              Tab(text: "Chats", icon: Icon(Icons.chat_sharp)),
              Tab(text: "Contacts", icon: Icon(Icons.perm_contact_cal_sharp)),
                  Tab(text: "Calls", icon: Icon(Icons.call)),
                  Tab(text: "Chats", icon: Icon(Icons.chat_sharp)),
                  Tab(text: "Contacts", icon: Icon(Icons.perm_contact_cal_sharp)),
                  Tab(text: "Calls", icon: Icon(Icons.call)),
                  Tab(text: "Chats", icon: Icon(Icons.chat_sharp)),
                  Tab(text: "Contacts", icon: Icon(Icons.perm_contact_cal_sharp)),
                  Tab(text: "Contacts", icon: Icon(Icons.perm_contact_cal_sharp)),
            ]),
          ),
          body: Container(
            color: Colors.white,
            child: TabBarView(children: [
              Center(
                child: Container(
                  child: Text("Calls",
                  style: TextStyle(fontSize: 23,color: Colors.black)),),
              ),
                Center(
                  child: Container(
                  child: Text("Chats",
                      style: TextStyle(fontSize: 23,color: Colors.black),),),
                ),
                Center(
                  child: Container(
                  child: Text("Contacts",
                      style: TextStyle(fontSize: 23,color: Colors.black),),),
                ),
            ]),
          ),
        ));
  }
}
