import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {
   String title;

   SecondScreen({required this.title});


  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child : Scaffold(
          appBar: AppBar(
              title: Text("Second Screen"),
              backgroundColor: Colors.purple
          ),

          body: Center(
            child: Text('${title}',style: TextStyle(fontSize: 25, color: Colors.blue)),
          ),

        )
    );
  }
}