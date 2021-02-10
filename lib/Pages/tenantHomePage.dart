

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miniproject/Pages/complaintPage.dart';
import 'package:miniproject/Pages/notificationPage.dart';
class TenantHomePage extends StatefulWidget {
  @override
  _TenantHomePageState createState() => _TenantHomePageState();
}

class _TenantHomePageState extends State<TenantHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to BuildingWaale"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
            },
            icon: Icon(Icons.notifications_active),
          )
        ],
      ),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: screenheight * 0.3,
                  width: double.infinity,
                  child: Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      "Assets/flat.jpg",
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                ),
                Positioned(
                    child: Text("View Appartment Details",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),),
              ],
            ),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ComplaintPage()));
            }, child: Text("Report a Complaint"),color: Colors.blue[200]),
            SizedBox(height: 20,),
            Text("General Information",style: TextStyle(fontSize: 24),),
            SizedBox(height: 20,),
            ListTile(tileColor:Colors.blue[300],

                title: Text("Watchman Ravishankar"),
                subtitle: Text("Contact Number 9834654312"),
                trailing: FlatButton.icon(onPressed: (){}, label: Text("call"),icon: Icon(Icons.call), color: Colors.blue,)
            ),
            SizedBox(height: 20,),
            ListTile(
                tileColor:Colors.blue[300],

                title: Text("Water Supply Management"),
                subtitle: Text("Contact Number 98967387"),
                trailing: FlatButton.icon(onPressed: (){}, label: Text("call"),icon: Icon(Icons.call), color: Colors.blue,)
            ),
            SizedBox(height: 20,),
            ListTile(
                tileColor:Colors.blue[300],

                title: Text("Current/Power Board "),
                subtitle: Text("Contact Number 98967387"),
                trailing: FlatButton.icon(onPressed: (){}, label: Text("call"),icon: Icon(Icons.call), color: Colors.blue,)
            ),
            SizedBox(height: 20,),
            ListTile(
                tileColor:Colors.blue[300],

                title: Text("Emergency Lift "),
                subtitle: Text("Contact Number 98967387"),
                trailing: FlatButton.icon(onPressed: (){}, label: Text("call"),icon: Icon(Icons.call), color: Colors.blue,)
            ),


          ],
        ),
      ),
    );
  }
}
