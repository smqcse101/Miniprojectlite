import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:miniproject/models/tenantmodel.dart';

class AddTenant extends StatefulWidget {
  @override
  _AddTenantState createState() => _AddTenantState();
}

class _AddTenantState extends State<AddTenant> {
  TenanatDetails data = TenanatDetails();

  DateTime selectedDate;

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: screenheight * 0.3,
                    width: double.infinity,
                    child: Image.asset(
                      "Assets/flat.jpg",
                      fit: BoxFit.fitWidth,
                      colorBlendMode: BlendMode.dstATop,
                    ),
                  ),
                  Positioned(
                      child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("Assets/profile.png"),
                  )),
                ],
              ),
              Container(
                width: screenwidth,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                          onPressed: _presentDatePicker,
                          child: Text("Joining Date"),
                        ),
                        Text(selectedDate == null
                            ? 'No Date Chosen!'
                            : 'Picked Date: ${DateFormat.yMMMd().format(selectedDate)}'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.7,
                      child: TextFormField(
                        onSaved: (value) {
                          setState(() {
                            data.familyName = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Tenant Name',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.7,
                      child: TextFormField(
                        onSaved: (value) {
                          setState(() {
                            data.occupation = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: ' Occupation',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.5,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            onSaved: (value) {
                              setState(() {
                                data.annualIncome = value;
                              });
                            },
                            decoration: InputDecoration(
                                hintText: ' Annual Income(Approx)',
                                contentPadding: EdgeInsets.all(10)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.4,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            onSaved: (value) {
                              setState(() {
                                data.familyMembers = int.parse(value);
                              });
                            },
                            decoration: InputDecoration(
                                hintText: ' Family Members',
                                contentPadding: EdgeInsets.all(10)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.4,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              hint: Text(
                                " Vehicle Type",
                                style: TextStyle(fontSize: 16),
                              ),
                              iconEnabledColor: Colors.black,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              value: data.vehicleType,
                              items: <String>[
                                "2 wheeler(Gear)",
                                "2 wheeler(Gearless)",
                                "4 wheeler",
                              ].map((String dropDownString) {
                                return DropdownMenuItem<String>(
                                  value: dropDownString,
                                  child: Text(dropDownString),
                                );
                              }).toList(),
                              onChanged: (String selectedValue) {
                                setState(() {
                                  data.vehicleType = selectedValue;
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.4,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            onSaved: (value) {
                              setState(() {
                                data.vehicleNumber = value;
                              });
                            },
                            decoration: InputDecoration(
                                hintText: 'Vehicle Number',
                                contentPadding: EdgeInsets.all(10)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.7,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          setState(() {
                            data.contactNumber1 = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Contact Number 1',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.7,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (value) {
                          setState(() {
                            data.contactNumber2 = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Contact Number 2',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      width: screenwidth * 0.7,
                      child: TextFormField(
                        onSaved: (value) {
                          setState(() {
                            data.emailId = value;
                          });
                        },
                        decoration: InputDecoration(
                            hintText: 'Email ID (optional)',
                            contentPadding: EdgeInsets.all(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.5,
                          child: TextFormField(
                            onSaved: (value) {
                              setState(() {
                                data.depositedAmount = value;
                              });
                            },
                            decoration: InputDecoration(
                                hintText: 'Deposited Amount',
                                contentPadding: EdgeInsets.all(10)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.4,
                          child: TextFormField(
                            onSaved: (value) {
                              setState(() {
                                data.emailId = value;
                              });
                            },
                            decoration: InputDecoration(
                                hintText: 'Rent',
                                contentPadding: EdgeInsets.all(10)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.blue)),
                          width: screenwidth * 0.5,
                          child: TextFormField(
                            onSaved: (value) {
                              setState(() {
                                data.annualIncrement = double.parse(value);
                              });
                            },
                            decoration: InputDecoration(
                                hintText: 'Annual Increment %',
                                contentPadding: EdgeInsets.all(10)),
                          ),
                        ),
                        RaisedButton(
                            child: Text("Add before Photos"), onPressed: () {}),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screenwidth,
                      height: 500,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        padding: EdgeInsets.all(10.0),
                        children: List.generate(40,(index){
                          return Container(color: Colors.red,);
                        }),
                      ),
                    ),
                    RaisedButton(
                        child: Text("Submit "), onPressed: () {}),
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
