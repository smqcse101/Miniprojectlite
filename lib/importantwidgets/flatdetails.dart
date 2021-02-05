import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:miniproject/Pages/ownerhomepage.dart';
import 'package:miniproject/models/flatdetails.dart';
import 'package:miniproject/models/lanlordonboardingmodel.dart';



class IndividualFlatDetails extends StatefulWidget {
  LandLordOnBoardingModel data;
  IndividualFlatDetails(this.data);
  @override
  _IndividualFlatDetailsState createState() => _IndividualFlatDetailsState();
}

class _IndividualFlatDetailsState extends State<IndividualFlatDetails> {
  List<FlatDetails> data1=[];



  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Enter Details of Each Flat",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 28, color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10),
        height: screenheight,
        width: screenwidth,
        child: ListView.separated(
            itemCount: widget.data.flatsOwnedCount,

            itemBuilder: (context, index) {
              return

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.65,
                      child: TextFormField(

                        onSaved: (value) {
                          setState(() {
                            data1[index].floorNumber= int.parse(value);
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Floor Number',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.65,
                      child: TextFormField(

                        onSaved: (value) {
                          setState(() {
                            data1[index].flatNumber = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'FlatName/number',
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
                              value: data1[index].bedrooms,
                              items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                                  .map((int dropDownString) {
                                return DropdownMenuItem<int>(
                                  value: dropDownString,
                                  child: Text(dropDownString.toString()),
                                );
                              }).toList(),
                              onChanged: (int selectedValue) {
                                setState(() {
                                  data1[index].bedrooms = selectedValue;
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
                              value: data1[index].halls,
                              items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                                  .map((int dropDownString) {
                                return DropdownMenuItem<int>(
                                  value: dropDownString,
                                  child: Text(dropDownString.toString()),
                                );
                              }).toList(),
                              onChanged: (int selectedValue) {
                                setState(() {
                                  data1[index].halls = selectedValue;
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
                              value: data1[index].kitchens,
                              items: <int>[1, 2, 3,]
                                  .map((int dropDownString) {
                                return DropdownMenuItem<int>(
                                  value: dropDownString,
                                  child: Text(dropDownString.toString()),
                                );
                              }).toList(),
                              onChanged: (int selectedValue) {
                                setState(() {
                                  data1[index].kitchens = selectedValue;
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
                          value: data1[index].balconies,
                          items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                              .map((int dropDownString) {
                            return DropdownMenuItem<int>(
                              value: dropDownString,
                              child: Text(dropDownString.toString()),
                            );
                          }).toList(),
                          onChanged: (int selectedValue) {
                            setState(() {
                              data1[index].balconies = selectedValue;
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
                                data1[index].colour1 = value;
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
                                data1[index].colour2 = value;
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
                              value: data1[index].fans,
                              items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                                  .map((int dropDownString) {
                                return DropdownMenuItem<int>(
                                  value: dropDownString,
                                  child: Text(dropDownString.toString()),
                                );
                              }).toList(),
                              onChanged: (int selectedValue) {
                                setState(() {
                                  data1[index].fans = selectedValue;
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
                              value: data1[index].tubeLights,
                              items: <int>[1, 2, 3, 4, 5, 6, 7,8,9,10]
                                  .map((int dropDownString) {
                                return DropdownMenuItem<int>(
                                  value: dropDownString,
                                  child: Text(dropDownString.toString()),
                                );
                              }).toList(),
                              onChanged: (int selectedValue) {
                                setState(() {
                                  data1[index].tubeLights = selectedValue;
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
                        value: data1[index].isfurnished,
                        inactiveTrackColor: Colors.grey,
                        activeColor: Colors.blue,
                        onChanged: (bool val) {
                          setState(() {
                            data1[index].isfurnished = val;
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
                );

            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 40,
              );
            },
            ),
      )),
    );
  }
}
