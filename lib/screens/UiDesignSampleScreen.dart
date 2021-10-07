import 'package:flutter/material.dart';
import 'UiSampleOne.dart';
import 'UiSampleTwo.dart';
import 'UiSampleThree.dart';
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
                child: ElevatedButton(
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
                ),
              ),


              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: ElevatedButton(
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
                ),
              ),

              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: ElevatedButton(
                  child: Text(
                    "UI Sample - 3",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UiSampleThree()),
                    );
                  },
                ),
              ),


              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: ElevatedButton(
                  child: Text(
                    "Custom Alert Dialog - 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return SimpleCustomAlert("My Demo title");
                    });
                  },
                ),
              ),

              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: ElevatedButton(
                  child: Text(
                    "Custom Alert Dialog - 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return CustomAlertSample("Process Complete ");
                    });
                  },
                ),
              ),









            ])));
  }
}
