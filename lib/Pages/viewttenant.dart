import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class ViewTenantDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(

        width: screenwidth,
        height: screenheight,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              alignment: Alignment.bottomRight,
              overflow: Overflow.visible,
              children: [
                Container(
                  width: screenwidth,
                  height: screenheight*0.28,
                  child: Image.asset("Assets/flat.jpg",fit: BoxFit.fitWidth,),
                ),
                Positioned(top:screenheight*0.15,child: CircleAvatar(radius: 70,backgroundImage: AssetImage("Assets/profile.png"),))
              ],
            ),
            Container(
              width: screenwidth*0.7,
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Text("Date Joined: 4th August 2017",style: TextStyle(fontSize: 18),),
            ),
            Container(
              width: screenwidth*0.7,
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

               child: Text("Personal Information",style: TextStyle(color: Colors.green,fontSize: 24),)
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

                child: Row(
                  children: [
                    Text("Family Name/ Head Name: ",style: TextStyle(fontSize: 16),),
                    Text("Subash Rao Reddy",style: TextStyle(fontSize: 16))
                  ],
                ),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Family Members: 6 ",style: TextStyle(fontSize: 16),),
                    Text("Occupation: Business",style: TextStyle(fontSize: 16),)
                  ],
                ),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Annual Income:30,00,00 ",style: TextStyle(fontSize: 16),),
                  Text("Vehicle(s): 2 Wheeler",style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Vehicle Number: TSEH4629",style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
                width: screenwidth*0.7,
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

                child: Text("Contact Details",style: TextStyle(color: Colors.green,fontSize: 24),)
            ),
            Container(

              padding: EdgeInsets.all(10),

              child: Text("9367459846",style: TextStyle(fontSize: 16),),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("993367145",style: TextStyle(fontSize: 16),),

                ],
              ),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Abcd@gmail.com",style: TextStyle(fontSize: 16),),

                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
                width: screenwidth*0.7,
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

                child: Text("Flat Related Details",style: TextStyle(color: Colors.green,fontSize: 24),)
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Text("Eviction date: 15th July 2028",style: TextStyle(fontSize: 16),),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Text("Amount Deposited:₹ 60,000",style: TextStyle(fontSize: 16),),
            ),
            Container(

              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rent Amount: 25,000 ",style: TextStyle(fontSize: 16),),
                  Text("Annual Increment:7.5%",style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    onPressed: (){},
                    child: Text("View Before Photos"),

                  ),
                  RaisedButton(
                    onPressed: (){},
                    child: Text("View Flat Details"),

                  ),
                ],
              ),
            )





          ],
        ),
      ),

    );
  }
}
