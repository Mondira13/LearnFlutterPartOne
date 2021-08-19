import 'package:flutter/material.dart';
import '../tabscreens/HomeTab.dart';
import '../tabscreens/MessagesTab.dart';
import '../tabscreens/ProfileTab.dart';


class BottomTabNavigationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTabNavigationState();
  }
}

class _BottomTabNavigationState extends State<BottomTabNavigationScreen> {
  int _currentIndex = 0;
  // static const List<Widget> _pages = <Widget>[
  //   Icon(
  //     Icons.call,
  //     size: 150,
  //   ),
  //   Icon(
  //     Icons.camera,
  //     size: 150,
  //   ),
  //   Icon(
  //     Icons.chat,
  //     size: 150,
  //   ),
  // ];

  List<Widget> _NavScreens() {
    return [
      HomeTab(),
      MessagesTab(),
      ProfileTab(),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text("Bottom Tab Navigation Screen"),
          backgroundColor: Colors.purple
      ),


      // body:  Center(
      //   child: _pages.elementAt(_currentIndex), //New
      // ),
      body: IndexedStack(
          index: _currentIndex,
          children: _NavScreens()),
      

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 25,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.lightGreen, size: 30),
        selectedItemColor: Colors.lightGreen,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: IconThemeData(color: Colors.grey,),
        unselectedItemColor: Colors.grey,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        onTap: onTabTapped,
        currentIndex: _currentIndex,

        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}



