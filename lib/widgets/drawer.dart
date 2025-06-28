import "package:flutter/material.dart";
import "package:practice_ui/widgets/dissmisible.dart";

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          // color: Theme.of(context).primaryColor,
          color: Colors.purple,
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(radius: 45,
                  backgroundImage: NetworkImage("https://media.licdn.com/dms/image/v2/D4D03AQFlQox-hhs1_A/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1723566594947?e=1756339200&v=beta&t=rF0wS2BoGSh1T9KiXMcENDquixpzEMAIiQagVjspK0s")),
                  SizedBox(width: 20),
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text("Kirthi Shetty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("abc@outlook",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)])
                ],
              ),
            ),),

            ListTile(
              leading: Icon(Icons.task_alt_sharp),
              title: Text("My Tasks"),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DismissibleWdget()));
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add Tasks"),


            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred Files"),
            ),
            ListTile(
              leading: Icon(Icons.done),
              title: Text("Done Tasks"),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text("My Report"),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("My Calender"),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),

            SizedBox(height: 150,),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
          ),
        ),

      ),
      appBar: AppBar(title: Text("DrawerWiget"),
      backgroundColor: Colors.purple,),

      body: Container(

      ),
    );
  }
}
