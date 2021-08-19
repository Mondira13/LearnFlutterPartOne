import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
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
            appBar: AppBar(
                title: Text("Grid View Screen"),
                backgroundColor: Colors.purple),
            body: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 8.0,
                children: List.generate(myList.length, (index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // if you need this
                      side: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Container(
                     margin: EdgeInsets.only(top: 15.0,bottom: 15.0,left: 10.0,right: 10.0),
                      child: Column(children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Text((index + 1).toString(),style: TextStyle(fontSize: 20, color: Colors.blue)),
                        ),

                        Image(image: NetworkImage(myLinkList[index]),width: 120.0,height: 100.0),
                        Text(myList[index],style: TextStyle(fontSize: 20, color: Colors.purple)),
                      ]),
                    ),
                  );
                }))));
  }
}
