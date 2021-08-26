import 'package:flutter/material.dart';
import 'dart:async';
import 'SecondScreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen>{
    @override
    void initState() {
      super.initState();
      Timer(Duration(seconds: 5),
              ()=>Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  SecondScreen()
              )
          )
      );
    }
    @override
    Widget build(BuildContext context) {
      return Container(
          color: Colors.brown,
          // child:FlutterLogo(size:MediaQuery.of(context).size.height)
        child: Center(
          // child: Text("Flutter App!!!!",style: TextStyle(fontSize: 25, color: Colors.white)),

        child: Lottie.network(
            'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

          // child: Lottie.asset('lib/animations/newanimation.json'),

          // child: AssetImage('lib/animations/rose.jpeg')
      
        ),
      );
    }
}
