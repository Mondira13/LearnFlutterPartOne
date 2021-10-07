import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'ButtonsListScreen.dart';
import 'ListViewStatic.dart';
import 'NavigationDrawerScreen.dart';
import 'BottomTabNavigationScreen.dart';
import 'TabBarScreen.dart';
import 'GridViewScreen.dart';
import 'OpenCameraScreen.dart';
import 'OpenGalleryScreen.dart';
import 'DocumentPickerScreen.dart';
import 'LocalStorageScreen.dart';
import 'SplashScreen.dart';
import 'MultiLanguageSupportScreen.dart';
import 'FontSetUpScreen.dart';
import 'WebServiceCallUsingDioScreen.dart';
import 'UiDesignSampleScreen.dart';
import 'VideoPlayerSampleScreen.dart';
import 'WebviewScreen.dart';
import 'TimelineViewScreen.dart';
import 'CountDownTimerScreen.dart';
import 'GoogleMapScreen.dart';


class MainScreen extends StatelessWidget {
  String textValue = "Welcome to Flutter!!!!";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Go to next screen",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SecondScreen(title : textValue)),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Button list",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ButtonsListScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "ListView With Static Data",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListViewStatic()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Navigation Drawer",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NavigationDrawerScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Bottom Tab Navigation",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BottomTabNavigationScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Tab Bar",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabBarScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Grid View With Static Data",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridViewScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Open Camera",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenCameraScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Access Gallery",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OpenGalleryScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Document Picker",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DocumentPickerScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Local Storage",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocalStorageScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Splash Screen",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
              ),
            ),

            // Container(
            //   width: 300,
            //   margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
            //   child: ElevatedButton(
            //
            //     child: Text(
            //       "Multi Language Support",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MultiLanguageSupportScreen()),
            //       );
            //     },
            //   ),
            // ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Font Setup",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FontSetUpScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Web Service Call",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebServiceCallUsingDioScreen()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "UI Practice",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UiDesignSampleScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Video Player Sample",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoPlayerSampleScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Webview Sample",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebviewScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Timeline View Sample",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimelineViewScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Countdown Timer",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CountDownTimerScreen()),
                  );
                },
              ),
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0,bottom: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Google Map",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  );
                },
              ),
            ),




          ],
        ));
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
}
