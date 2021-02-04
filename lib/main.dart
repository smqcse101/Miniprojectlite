import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


import 'package:flutter/material.dart';
import 'package:miniproject/Pages/LandLordOnBoarding.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 201, 210, 1),
        accentColor: Color.fromRGBO(239, 154, 154, 1)),
    title: "BuldingWaale",
    debugShowCheckedModeBanner: false,
    home: Building(),
  ));
}

class Building extends StatefulWidget {
  @override
  _BuildingState createState() => _BuildingState();
}

class _BuildingState extends State<Building> {


  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return LandLordOnboarding() ;
  }
}
