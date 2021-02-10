import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {
  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  String noc;
  String complaint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Report a complaint',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 22),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1)),
                width: double.infinity,
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(hintText: ''),
                  isExpanded: true,
                  onTap: () {},
                  items: <String>[
                    'Faulty Electric Lines & Switches',
                    'Cleanliness Issues',
                    'Elevator Malfunction',
                    'Gardening',
                    'Water Availability',
                    'Others'
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  // value: noc,
                  onChanged: (value) {
                    setState(() {
                      noc = value;
                    });
                  },
                  hint: Text('Nature of complaint'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1)),
                width: double.infinity,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      complaint = value;
                    });
                  },
                  decoration: InputDecoration.collapsed(
                      hintText: 'Type your complaint here'),
                  maxLines: 10,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue[900],
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Add Image',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text('Send', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 15),
              Text(
                  'We will get back to you within 48 to 72 hours. Thank you for your patience.'),
              SizedBox(height: 20),
              Text(
                  'If you still need any further assistance:\n Call us: +91-1234567890'),
            ],
          ),
        ),
      ),
    );
  }
}
