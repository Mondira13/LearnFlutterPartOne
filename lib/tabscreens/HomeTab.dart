import 'package:flutter/material.dart';
import '../screens/FormDesignScreen.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child : Scaffold(
          // backgroundColor: Colors.cyan,
          // body: Center(
          //   child: Text("Home Tab",style: TextStyle(fontSize: 25, color: Colors.white)),
          // ),

          backgroundColor: Colors.white,
          body: FormDesignScreen(),


        )
    );
  }
}