import 'package:flutter/material.dart';

class CustomAppBar {

  static setAppBarWithBackButton(BuildContext context, String title) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
      backgroundColor: Colors.green,
      leading: IconButton(
        icon: Icon(Icons.chevron_left),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),
    );
  }


  static setAppBarWithMultipleIcons(BuildContext context, String title) {
    return AppBar(
      title: Text(title,
          style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
      backgroundColor: Colors.green,
      leading: IconButton(
        icon: Icon(Icons.chevron_left),
        onPressed: () => Navigator.pop(context),
        color: Colors.white,
      ),

      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        ),
        IconButton(
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
    );
  }




}
