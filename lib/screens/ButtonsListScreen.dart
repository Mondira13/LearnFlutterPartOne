import 'package:flutter/material.dart';
import 'SecondScreen.dart';


class ButtonsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child : Scaffold(
          appBar: AppBar(
              title: Text("Buttons List"),
              backgroundColor: Colors.purple
          ),

          body: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
      child: FlatButton(
        child: Text(
          'First Button',
          style: TextStyle(fontSize: 20.0, color: Colors.lightGreen),
        ),
        // color: Colors.lightGreen,
        minWidth: 250,
        height: 50,
        onPressed: () {
          showAlertDialog(context,"Click on Flat Button");
        },
      ),
    ),

    Container(
    margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
    child: RaisedButton(
    child: Text(
    "Second Button",
    style: TextStyle(fontSize: 20),
    ),
    onPressed: () {
    showAlertDialog(context,"Click on Raised Button");
    },
    color: Colors.red,
    textColor: Colors.yellow,
    padding: EdgeInsets.only(left: 70.0, right: 70.0, top: 15.0, bottom: 15.0),
    splashColor: Colors.grey,
    ),
    ),

    Container(
    margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    IconButton(
    icon: Icon(Icons.volume_up),
    iconSize: 50,
    color: Colors.brown,
    tooltip: 'Increase volume by 5',
    onPressed: () {
      showAlertDialog(context,"Click on Icon Button");
    },
    ),
    Text('Speaker Volume: 5')
    ],
    )
    ),

    Container(
    margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 30.0),
    child: OutlineButton(
    child: Text("Outline Button", style: TextStyle(fontSize: 20.0),),
    highlightedBorderColor: Colors.red,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25)),
    onPressed: () {
      showAlertDialog(context,"Click on Outline Button");
    },
    padding: EdgeInsets.only(left: 80.0, right: 80.0, top: 15.0, bottom: 15.0),
    ),
    ),


    ])),
    );
  }
}

void showAlertDialog(BuildContext context, String text) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert Title"),
    content: Text(text),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

