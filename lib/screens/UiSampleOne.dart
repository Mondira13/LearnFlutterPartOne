import 'package:flutter/material.dart';
import '../components_screen/CustomAppBar.dart';

class UiSampleOne extends StatelessWidget {
  List<String> mainList = ["All Categories", "Members Deals", "Special Offer","Recent View","Monthly Offer"];
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
            appBar: CustomAppBar.setAppBarWithMultipleIcons(
                context, "UI Sample - 1"),
            body: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: mainList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Container(
                                margin: EdgeInsets.only(left:15.0,right: 15.0),
                                  child: Row(children: <Widget>[
                                Text(mainList[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                TextButton(
                                  onPressed: () {},
                                  // color: Colors.blue,
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      new Text('View All',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 13)),
                                      new Icon(
                                        Icons.chevron_right,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                )
                              ])),

                              SizedBox(
                                width: double.infinity,
                                height: 170,
                                child: ListView.builder(
                                    itemCount: myList.length,
                                    physics: ClampingScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Container(
                                          child: Column(children: <Widget>[
                                            Card(
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(80),
                                              ),
                                              child: Container(
                                                height: 85,
                                                width: 100,
                                                margin: EdgeInsets.only(
                                                    top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                                                child: Center(
                                                  child: Image(
                                                      image: NetworkImage(myLinkList[index]),
                                                      width: 75.0,
                                                      height: 75.0),
                                                ),
                                              ),
                                            ),

                                            Center(
                                              child: Text(myList[index],style: TextStyle(fontSize: 17, color: Colors.brown)),
                                            )

                                          ]));


                                    }),
                              )



                              // ListView.builder(
                              //     itemCount: myList.length,
                              //     physics: ClampingScrollPhysics(),
                              //     shrinkWrap: true,
                              //     // scrollDirection: Axis.horizontal,
                              //     itemBuilder: (BuildContext context, int index) {
                              //       return Container(
                              //           child: Column(children: <Widget>[
                              //             Card(
                              //               elevation: 2.0,
                              //               shape: RoundedRectangleBorder(
                              //                 borderRadius: BorderRadius.circular(80),
                              //               ),
                              //               child: Container(
                              //                 height: 85,
                              //                 width: 100,
                              //                 margin: EdgeInsets.only(
                              //                     top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                              //                 child: Center(
                              //                   child: Image(
                              //                       image: NetworkImage(myLinkList[index]),
                              //                       width: 75.0,
                              //                       height: 75.0),
                              //                 ),
                              //               ),
                              //             ),
                              //
                              //             Center(
                              //               child: Text(myList[index],style: TextStyle(fontSize: 17, color: Colors.brown)),
                              //             )
                              //
                              //           ]));
                              //
                              //
                              //     }),







                            ],
                          );
                        }),
                  )
                ],
              ),
            )));
  }
}

