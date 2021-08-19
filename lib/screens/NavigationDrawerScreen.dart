import 'package:flutter/material.dart';
import 'DrawerScreen.dart';

class NavigationDrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer Screen"),
            backgroundColor: Colors.purple
        ),
        drawer: DrawerScreen(),
        body: Center(child: Text("This is drawer page")));
  }
  }


