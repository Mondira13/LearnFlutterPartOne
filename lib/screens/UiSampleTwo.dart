import 'package:flutter/material.dart';
import '../components_screen/CustomAppBar.dart';

class UiSampleTwo extends StatelessWidget {
  List<String> myList = [
    "Amaryllis.",
    "African Daisy",
    "Alstroemeria.",
    "Baby's Breath.",
    "Balloon Flower.",
    "Bee Balm Flower.",
    "Bergenia."
  ];
  List<String> myLinkList = [
    "https://upload.wikimedia.org/wikipedia/commons/e/ea/Daisy_pollen_flower_220533.jpg",
    "https://www.all-my-favourite-flower-names.com/images/128xNx800px-Amaryllis_hippeastrum_-_Candy_floss.jpg.pagespeed.ic.6UhpYa7xqv.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/e/ea/Daisy_pollen_flower_220533.jpg",
    "https://www.all-my-favourite-flower-names.com/images/128xNx800px-Amaryllis_hippeastrum_-_Candy_floss.jpg.pagespeed.ic.6UhpYa7xqv.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/e/ea/Daisy_pollen_flower_220533.jpg",
    "https://www.all-my-favourite-flower-names.com/images/128xNx800px-Amaryllis_hippeastrum_-_Candy_floss.jpg.pagespeed.ic.6UhpYa7xqv.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/e/ea/Daisy_pollen_flower_220533.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Scaffold(
          appBar:
              CustomAppBar.setAppBarWithBackButton(context, "UI Sample - 2"),
          body: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    height: 20,
                    color: Colors.black,
                  ),
              itemCount: myList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(left: 15.0, top: 5.0),
                    child: Row(children: <Widget>[
                      Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Container(
                          height: 110,
                          width: 90,
                          // color: Colors.yellow,
                          child: Center(
                            child: Image(
                              image: NetworkImage(myLinkList[index]),
                              height: 65.0,
                              width: 70.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Column(children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              myList[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Unit price : Rs. 500.00",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black)),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Row(children: <Widget>[
                                Container(
                                  width: 35,
                                  height: 35,
                                  margin: EdgeInsets.only(top: 15.0),
                                  child: OutlineButton(
                                    child: Center(
                                        child: Text("+",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black))),
                                    borderSide: BorderSide(color: Colors.black),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 15.0, right: 15.0, top: 15.0),
                                    child: Center(
                                        child: Text("1",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black)))),
                                Container(
                                  width: 35,
                                  height: 35,
                                  margin: EdgeInsets.only(top: 15.0),
                                  child: OutlineButton(
                                    child: Center(
                                        child: Text("-",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black))),
                                    borderSide: BorderSide(color: Colors.black),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 15.0, left: 25.0),
                                  child: OutlineButton(
                                    child: Center(
                                        child: Text("Disc: Rs.50",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.green))),
                                    borderSide: BorderSide(color: Colors.green),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15))),
                                    onPressed: () {},
                                  ),
                                )
                              ]))
                        ]),
                      )
                    ]));
              }),
        ));
  }
}
