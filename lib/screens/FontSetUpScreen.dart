import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSetUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child : Scaffold(
          appBar: AppBar(
              title: Text("Font Setup Screen"),
              backgroundColor: Colors.purple
          ),

          body: ListView(
              children: <Widget>[
              Text("Font Name -> Aclonica",
                  style: GoogleFonts.aclonica(textStyle: TextStyle(fontSize: 25, color: Colors.purpleAccent,fontWeight: FontWeight.bold))),

                Text("Font Name -> AnticSlab",
                    style: GoogleFonts.anticSlab(textStyle: TextStyle(fontSize: 25, color: Colors.green,fontWeight: FontWeight.normal))),

                Text("Font Name -> Roboto bold",
                    style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 25, color: Colors.blue,fontWeight: FontWeight.bold))),

                Text("Font Name -> Roboto normal",
                    style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 25, color: Colors.orange,fontWeight: FontWeight.normal))),

                Text("Font Name -> zhiMangXing",
                    style: GoogleFonts.zhiMangXing(textStyle: TextStyle(fontSize: 25, color: Colors.brown,fontWeight: FontWeight.bold))),

                Text("Font Name -> balooBhaina",
                    style: GoogleFonts.balooBhaina(textStyle: TextStyle(fontSize: 25, color: Colors.brown,fontWeight: FontWeight.normal))),



              ]
          )
        )
    );
  }
}