import 'package:flutter/material.dart';

class PhoneTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child : Scaffold(
          backgroundColor: Colors.purple,
          body: Center(
            child: Text("Profile Tab",style: TextStyle(fontSize: 25, color: Colors.white)),
          ),

        )
    );
  }
}