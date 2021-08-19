import 'package:flutter/material.dart';
import '../tabscreens/HomeTab.dart';
import '../tabscreens/MessagesTab.dart';
import '../tabscreens/ProfileTab.dart';
import '../tabscreens/PhoneTab.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length:list.length, vsync: this);// initialise it here
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> list = [
    Tab(icon: Icon(Icons.home),text: "Home",),
    Tab(icon: Icon(Icons.message),text: "Message",),
    Tab(icon: Icon(Icons.person),text: "Profile",),
    Tab(icon: Icon(Icons.phone_android),text: "Phone",),
  ];

  textStyle() {
    return TextStyle(color: Colors.black, fontSize:20.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs:list,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5.0,color:Colors.redAccent),
              insets: EdgeInsets.symmetric(horizontal:0.0)
          ),


//        /  indicatorPadding: EdgeInsets.all(0.0),
          indicatorWeight: 4.0,
          labelPadding: EdgeInsets.only(left:30.0, right:30.0),
        ),
        title: Text('Tab Bar'),

      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          HomeTab(),
          MessagesTab(),
          ProfileTab(),
          PhoneTab(),
        ],
      ),

    );
  }
}