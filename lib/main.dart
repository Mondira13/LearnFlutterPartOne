import 'package:flutter/material.dart';
import './screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "My All Buttons",
     home: Scaffold(
       appBar: AppBar(
         title: Text("All Task List"),
         backgroundColor: Colors.purple
       ),

       body: MainScreen(), // body

       // floatingActionButton: FloatingActionButton(
       //   child: Icon(Icons.navigation),
       //   backgroundColor: Colors.green,
       //   foregroundColor: Colors.white,
       //   onPressed: () => {},
       // ),
       floatingActionButton:FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.save),
        label: Text("Save"),
      ),

     ) ,
   );
  }
  
}
