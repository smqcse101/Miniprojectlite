import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNotice extends StatefulWidget {
  @override
  _CreateNoticeState createState() => _CreateNoticeState();
}

class _CreateNoticeState extends State<CreateNotice> {
  String selectedtenant;
  String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Inform Tenants About Something"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.all(Radius.circular(20))),
                width: double.infinity,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text(
                      " Select Tenant",
                      style: TextStyle(fontSize: 16),
                    ),
                    iconEnabledColor: Colors.black,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    value: selectedtenant,
                    items: <String>[
                      "101",
                      "103",
                      "105",
                      "All"
                    ].map((String dropDownString) {
                      return DropdownMenuItem<String>(
                        value: dropDownString,
                        child: Text(dropDownString),
                      );
                    }).toList(),
                    onChanged: (String selectedValue) {
                      setState(() {
                        selectedtenant = selectedValue;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                      20) //                 <--- border radius here
                  ),
                  border: Border.all(
                  ),
                  color: Colors.white,
                ),
                child: TextFormField(
                  maxLines: 10,
                  decoration: InputDecoration(
                      hintText: "Leave A Notice Here",
                      contentPadding: EdgeInsets.all(10)),
                  validator: ( value) {
                    if (value.isEmpty) {
                      return "description is required";
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    setState(() {
                      description = value ;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
           RaisedButton.icon(onPressed: (){

//Code To upload a file Malik;
           }, icon: Icon(Icons.attach_file), label: Text("Attach A File"))


          ],
        ),

      ),
    );
  }
}
