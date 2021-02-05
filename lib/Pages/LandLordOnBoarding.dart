import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';
import 'package:miniproject/importantwidgets/flatdetails.dart';

import 'dart:io';

import 'package:miniproject/models/lanlordonboardingmodel.dart';




class LandLordOnboarding extends StatefulWidget {
  @override
  _LandLordOnboardingState createState() => _LandLordOnboardingState();
}

class _LandLordOnboardingState extends State<LandLordOnboarding> {
  LandLordOnBoardingModel data= LandLordOnBoardingModel();

final GlobalKey<FormState> myKey = GlobalKey<FormState>();

  void _forDp() async {
    PickedFile pickedFromGallery =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      data.ownerProfileImage = File(pickedFromGallery.path);
    });
  }

  void _forBuilding() async {
    PickedFile pickedFromGallery =
        await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      data.buildingImage = File(pickedFromGallery.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: myKey,
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
//                 padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    height: screenheight * 0.25,
                    width: screenwidth,
                    child: Row(
                      children: [
                        Stack(
                          children: <Widget>[
                            data.ownerProfileImage == null
                                ? CircleAvatar(
                                    backgroundImage: AssetImage("Assets/123.png"),
                                    radius: 70,
                                  )
                                : CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 70,
                                    child: CircleAvatar(
                                      radius: 65,
                                      backgroundImage: Image.file(
                                        data.ownerProfileImage,
                                        fit: BoxFit.cover,
                                      ).image,
                                    ),
                                  ),
                            Positioned(
                                top: 110,
                                left: 100,
                                child: GestureDetector(
                                  onTap: () async {
                                    _forDp();

                                  },
                                  child: Container(
                                      width: 30,
                                      color: Colors.amber,
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      )),
                                )),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: screenwidth * 0.59,
                              child: Text(
                                "Welcome to BuildingWaale",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.blue)),
                              width: screenwidth * 0.45,
                              child: TextFormField(
                                onSaved: (value) {
                                  setState(() {
                                    data.ownerName = value;
                                  });
                                },
                                decoration: InputDecoration(
                                    hintText: 'Your Name',
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.blue)),
                              width: screenwidth * 0.45,
                              child: TextFormField(
                                onSaved: (value) {
                                  setState(() {
                                    data.ownerNumber = value;
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: 'Phone Number',
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Text(
                        "Your Building Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    width: screenwidth * 0.65,
                    child: TextFormField(
                      onSaved: (value) {
                        setState(() {
                          data.buildingName = value;
                        });
                      },
                      decoration: InputDecoration(
                          hintText: 'Your Apartment Name',
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.45,
                        child: TextFormField(
                          onSaved: (value) {
                            setState(() {
                              data.buildingLocation = value;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Location',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.35,
                        child: TextFormField(
                          onSaved: (value) {
                            setState(() {
                              data.buildingAge = int.parse(value);
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Apartment Age',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.4,
                        child: TextFormField(
                          onSaved: (value) {
                            setState(() {
                              data.floorsCount = int.parse(value);
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Number Of Floors',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.23,
                        child: TextFormField(
                          onSaved: (value) {
                            setState(() {
                              data.buildingColour1 = value;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Colour1',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.23,
                        child: TextFormField(
                          onSaved: (value) {
                            setState(() {
                              data.buildingColour2 = value;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Colour2',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.4,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              " Preferred",
                              style: TextStyle(fontSize: 16),
                            ),
                            iconEnabledColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            value: data.preferred,
                            items: <String>[
                              "Family",
                              "Joint Family",
                              "Bachelors",
                              "All"
                            ].map((String dropDownString) {
                              return DropdownMenuItem<String>(
                                value: dropDownString,
                                child: Text(dropDownString),
                              );
                            }).toList(),
                            onChanged: (String selectedValue) {
                              setState(() {
                                data.preferred = selectedValue;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.35,
                        child: TextFormField(
                          onSaved: (value){
                            setState(() {
                              data.areOfBuilding=double.parse(value);
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Area In Sq.Ft',
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                                30) //                 <--- border radius here
                            ),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        color: Colors.white,
                      ),
                      child: data.buildingImage == null
                          ? Center(
                              child: RaisedButton.icon(
                                  color: Colors.blue,
                                  onPressed: () {
                                    _forBuilding();
                                  },
                                  icon: Icon(
                                    Icons.add_a_photo,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Add Image",
                                    style: TextStyle(color: Colors.white),
                                  )))
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.file(
                                data.buildingImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                      width: screenwidth,
                      height: screenheight / 2 - 150,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenwidth,

                    child: SwitchListTile(
                      title: Text(
                        "Watchman Facility",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      dense: true,
                      value: data.watchmanFacility,
                      inactiveTrackColor: Colors.grey,
                      activeColor: Colors.blue,
                      onChanged: (bool val) {
                        setState(() {
                          data.watchmanFacility = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenwidth,

                    child: SwitchListTile(
                      title: Text(
                        "Lift Facility",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      dense: true,
                      value: data.liftFacility,
                      inactiveTrackColor: Colors.grey,
                      activeColor: Colors.blue,
                      onChanged: (bool val) {
                        setState(() {
                          data.liftFacility = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenwidth,

                    child: SwitchListTile(
                      title: Text(
                        "Parking 2/4 Wheeler",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      dense: true,
                      value: data.parkingFacility,
                      inactiveTrackColor: Colors.grey,
                      activeColor: Colors.blue,
                      onChanged: (bool val) {
                        setState(() {
                          data.parkingFacility = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenwidth,

                    child: SwitchListTile(
                      title: Text(
                        "Drinking Water Facility",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      dense: true,
                      value: data.drinkingWaterFacility,
                      inactiveTrackColor: Colors.grey,
                      activeColor: Colors.blue,
                      onChanged: (bool val) {
                        setState(() {
                          data.drinkingWaterFacility = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenwidth,

                    child: SwitchListTile(
                      title: Text(
                        "Borewell Water Facility",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      dense: true,
                      value: data.borewellWaterFacility,
                      inactiveTrackColor: Colors.grey,
                      activeColor: Colors.blue,
                      onChanged: (bool val) {
                        setState(() {
                          data.borewellWaterFacility = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: Text(
                            "Flats You own",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          )),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue)),
                        width: screenwidth * 0.4,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<int>(
                            hint: Text(
                              " Count",
                              style: TextStyle(fontSize: 16),
                            ),
                            iconEnabledColor: Colors.black,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            value: data.flatsOwnedCount,
                            items: <int>[1, 2, 3, 4, 5, 6, 7]
                                .map((int dropDownString) {
                              return DropdownMenuItem<int>(
                                value: dropDownString,
                                child: Text(dropDownString.toString()),
                              );
                            }).toList(),
                            onChanged: (int selectedValue) {
                              setState(() {
                                data.flatsOwnedCount = selectedValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    width: screenwidth * 0.85,
                    child: TextFormField(
                      onSaved: (value){
                        setState(() {
                          data.currentNumber=value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Current/Electric Board Number',
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    width: screenwidth * 0.85,
                    child: TextFormField(
                      onSaved: (value){
                        setState(() {
                          data.waterSupplyNumber=value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Water supply Number',
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    width: screenwidth * 0.85,
                    child: TextFormField(
                      onSaved: (value){
                        setState(() {
                         data.watchmanNumber=value;

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Watchman Number',
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    width: screenwidth * 0.85,
                    child: TextFormField(
                      onSaved: (value){
                        setState(() {
                          data.watchmanName=value;

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Watchman Name',
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    width: screenwidth * 0.85,
                    child: TextFormField(
                      onSaved: (value){
                        setState(() {
                          data.watchmanAge=int.parse(value);

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Watchman Age',
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                  SizedBox(height: 20),
                  RaisedButton(child: Text("Next"), onPressed: () {
                        myKey.currentState.save();
                        print(data.flatsOwnedCount);



                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                IndividualFlatDetails(data)));
                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
