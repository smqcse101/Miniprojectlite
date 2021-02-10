import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:miniproject/Pages/buildingdetails.dart';
import 'package:miniproject/Pages/createnotice.dart';
import 'package:miniproject/Pages/viewttenant.dart';

class OwnerHomePage extends StatefulWidget {
  @override
  _OwnerHomePageState createState() => _OwnerHomePageState();
}

class _OwnerHomePageState extends State<OwnerHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("BuildingWaale"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active),
          )
        ],
      ),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: screenheight * 0.4,
              child: ListView.separated(
                itemBuilder: (context, index) {

                  return index%2==0?ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: screenwidth,
                      height: 80,
                      color: Colors.red[400],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(radius: 30,backgroundImage: AssetImage("Assets/123.png"),),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Flat Number 305",style: TextStyle(fontSize: 20,),),
                              Text("Tenant-Nill")
                            ],
                          ),

                          FlatButton(onPressed: (){},child: Text("View Flat",), color:Colors.blue[200],)
                        ],
                      ),
                    ),
                  ):ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: screenwidth,
                      height: 80,
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(radius: 30,child: Image.asset("Assets/profile.png"),),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Flat Number 305",style: TextStyle(fontSize: 20,),),
                              Text("Tenant--Neesh Giri")
                            ],
                          ),

                          FlatButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewTenantDetails()));

                          },child: Text("View Tenant",), color: Colors.blue[200],)
                        ],
                      ),
                    ),
                  );




                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: 5,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BuildingDetails()));
                }, child: Text("Building Details"),color: Colors.blue[200],),
                FlatButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNotice()));
                }, child: Text("Create Notice"),color: Colors.blue[200]),

              ],
            ),
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
