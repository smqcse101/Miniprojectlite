import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miniproject/Pages/ownerhomepage.dart';
import 'package:miniproject/models/flatdetails.dart';

class IndividualFlatDetails extends StatefulWidget {
  @override
  _IndividualFlatDetailsState createState() => _IndividualFlatDetailsState();
}

class _IndividualFlatDetailsState extends State<IndividualFlatDetails> {
  FlatDetails data=FlatDetails();

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Flat Number 206 Details",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 28,color: Colors.white),),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue)),
                  width: screenwidth * 0.65,
                  child: TextFormField(

                    onSaved: (value) {
                      setState(() {
                        data.floorNumber = int.parse(value);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: 'Floor Number',
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Room Count",style: TextStyle(fontSize: 24),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          hint: Text(
                            "BedRooms",
                            style: TextStyle(fontSize: 16,),
                          ),
                          iconEnabledColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          value: data.bedrooms,
                          items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                              .map((int dropDownString) {
                            return DropdownMenuItem<int>(
                              value: dropDownString,
                              child: Text(dropDownString.toString()),
                            );
                          }).toList(),
                          onChanged: (int selectedValue) {
                            setState(() {
                              data.bedrooms = selectedValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          hint: Text(
                            "Halls",
                            style: TextStyle(fontSize: 16,),
                          ),
                          iconEnabledColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          value: data.halls,
                          items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                              .map((int dropDownString) {
                            return DropdownMenuItem<int>(
                              value: dropDownString,
                              child: Text(dropDownString.toString()),
                            );
                          }).toList(),
                          onChanged: (int selectedValue) {
                            setState(() {
                              data.halls = selectedValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          hint: Text(
                            "Kitchens",
                            style: TextStyle(fontSize: 16,),
                          ),
                          iconEnabledColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          value: data.kitchens,
                          items: <int>[1, 2, 3,]
                              .map((int dropDownString) {
                            return DropdownMenuItem<int>(
                              value: dropDownString,
                              child: Text(dropDownString.toString()),
                            );
                          }).toList(),
                          onChanged: (int selectedValue) {
                            setState(() {
                              data.kitchens = selectedValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue)),
                  width: screenwidth * 0.3,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<int>(
                      hint: Text(
                        "Balconies",
                        style: TextStyle(fontSize: 16,),
                      ),
                      iconEnabledColor: Colors.black,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      value: data.balconies,
                      items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                          .map((int dropDownString) {
                        return DropdownMenuItem<int>(
                          value: dropDownString,
                          child: Text(dropDownString.toString()),
                        );
                      }).toList(),
                      onChanged: (int selectedValue) {
                        setState(() {
                          data.balconies = selectedValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Colour Paint",style: TextStyle(fontSize: 24)),
                    SizedBox(width: 30,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.25,
                      child: TextFormField(

                        onSaved: (value) {
                          setState(() {
                            data.colour1 = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Colour1',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.25,
                      child: TextFormField(

                        onSaved: (value) {
                          setState(() {
                            data.colour2 = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Colour2',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.3,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          hint: Text(
                            "Fans",
                            style: TextStyle(fontSize: 16,),
                          ),
                          iconEnabledColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          value: data.fans,
                          items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                              .map((int dropDownString) {
                            return DropdownMenuItem<int>(
                              value: dropDownString,
                              child: Text(dropDownString.toString()),
                            );
                          }).toList(),
                          onChanged: (int selectedValue) {
                            setState(() {
                              data.fans = selectedValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.31,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(
                          hint: Text(
                            "TubeLights",
                            style: TextStyle(fontSize: 16,),
                          ),
                          iconEnabledColor: Colors.black,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          value: data.tubeLights,
                          items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                              .map((int dropDownString) {
                            return DropdownMenuItem<int>(
                              value: dropDownString,
                              child: Text(dropDownString.toString()),
                            );
                          }).toList(),
                          onChanged: (int selectedValue) {
                            setState(() {
                              data.tubeLights = selectedValue;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(width: screenwidth*0.3,)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: screenwidth,

                  child: SwitchListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 6,vertical:2),
                    title: Text(
                      "Is Your Flat Furnished?",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    dense: true,
                    value: data.isfurnished,
                    inactiveTrackColor: Colors.grey,
                    activeColor: Colors.blue,
                    onChanged: (bool val) {
                      setState(() {
                        data.isfurnished = val;
                      });
                    },
                  ),
                ),
                FlatButton(onPressed: (){

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              OwnerHomePage()));
                }, child: Text("Next"),
                color: Colors.blue,)



              ],
            ),

          ),
        ),
      ),
    );
  }
}
