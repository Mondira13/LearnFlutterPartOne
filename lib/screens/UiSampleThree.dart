import 'dart:math';
import 'package:flutter/material.dart';


class UiSampleThree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UiSampleThreeState();
  }
}

class _UiSampleThreeState extends State<UiSampleThree> {
  late String id, password;


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              margin: MediaQuery.of(context).padding,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "KOR",
                          style:
                              TextStyle(fontSize: 15, color: Colors.lightGreen),
                        )),
                  ),


                    Container(
                      margin: EdgeInsets.only(top: 150),
                        child: Column(children: <Widget>[
                      Text(
                        "Centerfield",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 15, right: 15, top: 50),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Id",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            onChanged: (text) => {
                              setState(() {
                                id = text;
                              }),
                            },
                            textInputAction: TextInputAction.done,
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            obscureText: true,
                            onChanged: (text) => {
                              setState(() {
                                password = text;
                              }),
                            },
                            textInputAction: TextInputAction.done,
                          )),

                    ])),

                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      margin: EdgeInsets.only(top: 10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ))),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ))
                ],
              ),
            )));
  }
}
