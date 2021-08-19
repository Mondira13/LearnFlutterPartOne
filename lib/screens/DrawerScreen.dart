import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(Icons.home,"Home"),
          createDrawerBodyItem(Icons.account_circle,'Profile'),
          createDrawerBodyItem(Icons.event_note,'Events'),
          Divider(),
          createDrawerBodyItem(Icons.notifications_active,'Notifications'),
          createDrawerBodyItem(Icons.contact_phone,'Contact Info'),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: (){} ,
          ),
        ],
      ),
    );
  }
}

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              // image:  AssetImage('images/rose.jpeg'))),
              image:  NetworkImage('https://www.desicomments.com/dc3/19/439319/4393191.jpg'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Welcome to Flutter",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget createDrawerBodyItem(IconData icon, String text) {
// Widget createDrawerBodyItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap:()=> showToast(text),
  );
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.cyan,
      textColor: Colors.white,
      fontSize: 16.0);
}