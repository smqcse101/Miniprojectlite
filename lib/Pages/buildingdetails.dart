import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class BuildingDetails extends StatelessWidget {
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

            Container(
              width: screenwidth,
              height: screenheight*0.35,
              child: Image.asset("Assets/building.jpg",fit: BoxFit.fitWidth,),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: Text("172, New Garden Town Garden Block Garden Town, Lahore, Punjab, Pakistan",style: TextStyle(fontSize: 24),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: screenheight*0.5,

              width: screenwidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("GreenLand Apartments",style: TextStyle(fontSize: 20),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: screenwidth*0.5,child:  Text("Colour's : Green Yellow",style: TextStyle(fontSize: 16),),),
                      Container(width: screenwidth*0.4,child: Text("Apartment Age:  24",style: TextStyle(fontSize: 16),),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: screenwidth*0.5,child:  Text("Area in Sq.ft : 24,000",style: TextStyle(fontSize: 16),),),
                      Container(width: screenwidth*0.4,child: Text("Floors:  8",style: TextStyle(fontSize: 16),),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: screenwidth*0.5,child:  Text("Preferred: Family& Bachelors",style: TextStyle(fontSize: 16),),),
                      Container(width: screenwidth*0.4,child: Text("Flats: 34",style: TextStyle(fontSize: 16),),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: screenwidth*0.5,child:  Text("Watchman: Ravi Shankar",style: TextStyle(fontSize: 16),),),
                      Container(width: screenwidth*0.4,child: Text("Age: 56",style: TextStyle(fontSize: 16),),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: screenwidth*0.5,child:  Text("Phone Number:9857895632",style: TextStyle(fontSize: 16),),),
                      Container(width: screenwidth*0.4,child: Text("Family Members: 5",style: TextStyle(fontSize: 16),),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: screenwidth*0.5,child:  Text("Current Board:9857895632",style: TextStyle(fontSize: 16),),),

                    ],
                  ),



                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("Edit"),),
    );
  }
}
