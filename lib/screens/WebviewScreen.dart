import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Material(
        color: Colors.white,
        child : Scaffold(
        appBar: AppBar(
        title: Text("Webview Screen"),
        backgroundColor: Colors.purple
        ),


        body: WebView(
          initialUrl: 'https://www.google.com/',
          javascriptMode: JavascriptMode.unrestricted,
        ),



    )
    );

  }
}