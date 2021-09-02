import 'package:flutter/material.dart';
import 'UiSampleOne.dart';
import 'UiSampleTwo.dart';
import '../components_screen/SimpleCustomAlert.dart';
import '../components_screen/CustomAlertSample.dart';

class UiDesignSampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
                title: Text("UI Design Sample Screen"),
                backgroundColor: Colors.purple),
            body: ListView(children: <Widget>[
              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "UI Sample - 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UiSampleOne()),
                    );
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  // padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                  splashColor: Colors.grey,
                ),
              ),


              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "UI Sample - 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UiSampleTwo()),
                    );
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  // padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                  splashColor: Colors.grey,
                ),
              ),

              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "Custom Alert Dialog - 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return SimpleCustomAlert("My Demo title");
                    });
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),

              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "Custom Alert Dialog - 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return CustomAlertSample("Process Complete ");
                    });
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),





            ])));
  }
}
