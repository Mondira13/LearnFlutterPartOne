import 'package:flutter/material.dart';

class MessagesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child : Scaffold(
          backgroundColor: Colors.amberAccent,
          body: Center(
            child: Text("Message Tab",style: TextStyle(fontSize: 25, color: Colors.white)),
          ),

        )
    );
  }
}