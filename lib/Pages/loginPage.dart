import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isvisible = true;
  bool isowner=true;
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: screenheight * 0.35,
                  child: Stack(
                    children: [
                      Container(
                          width: screenwidth,
                          height: screenheight * 0.35,
                          child: Image.asset(
                            "Assets/final.png",
                            fit: BoxFit.fitHeight,
                          )),
                      Positioned(
                        top: 10,
                        left: 80,
                        child: SafeArea(
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                child: Image.asset("Assets/logo.png"),
                              ),
                              Text(
                                "BuildingWaale",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(20, 33, 104, 1)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Container(
                height: screenheight * 0.65,
                width: screenwidth,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                          0.3,
                          0.8
                        ],
                        colors: [
                          Color.fromRGBO(20, 33, 104, 1),
                          Color.fromRGBO(25, 50, 178, 1)
                        ])),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: ToggleSwitch(
                      fontSize: 20,
                      activeBgColor: Colors.amber,
                      activeFgColor: Color.fromRGBO(20, 33, 104, 1),
                      cornerRadius: 20,
                      inactiveFgColor: Colors.white,
                      labels: ["OWNER", "TENANT"],
                      minWidth: 150,
                      initialLabelIndex: 0,
                      onToggle: (index) {
                        setState(() {
                          isowner=!isowner;
                        });
                      },
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          height: screenheight * 0.25,
                          width: screenwidth * 0.75,
                          color: Color.fromRGBO(18, 27, 71, 1),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.white),
                                  width: screenwidth * 0.65,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.email),
                                        hintText: "Email Address"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      color: Colors.white),
                                  width: screenwidth * 0.65,
                                  child: TextFormField(
                                      obscureText: isvisible,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.lock),
                                        suffixIcon: IconButton(
                                          icon: Icon(isvisible
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              isvisible = !isvisible;
                                            });
                                          },
                                        ),
                                        hintText: "Password",
                                      ),
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return "Password is required";
                                        }
                                        return null;
                                      },
                                      onSaved: (String value) {}),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: screenheight * 0.22,
                          left: screenwidth * 0.25,
                          child: Container(
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(20, 33, 104, 1)),
                              ),
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.all(50),
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.all(20),
                      width: screenwidth * 0.55,
                      child: GestureDetector(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            color: Colors.white,
                            height: 50,
                            child: Row(
                              children: <Widget>[
                                Image.asset("Assets/googlelogo.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("SIGN IN WITH GOOGLE"),
                              ],
                            ),
                          ),
                        ),
                      ))
                ]),
              )
            ],
          ),
        ));
  }
}
