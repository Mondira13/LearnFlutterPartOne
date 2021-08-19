import 'package:flutter/material.dart';

class ListViewStatic extends StatelessWidget {
  List<String> myList = ["Amaryllis.","African Daisy","Alstroemeria.","Baby's Breath.","Balloon Flower.","Bee Balm Flower.","Bergenia."];
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
        child : Scaffold(
        appBar: AppBar(
        title: Text("ListView With Static Data"),
        backgroundColor: Colors.purple
        ),

        body: ListView.separated(
          separatorBuilder: (context,index) => Divider(height: 20,color: Colors.black,),
          // itemCount: 25,
          itemCount: myList.length,
          itemBuilder: (context, index) {
            // /return Text("Title   ${index+1}");
            return Container(
              margin: EdgeInsets.only(left: 15.0,right: 15.0,top: 5.0),
              child: Row(children: <Widget>[
                Image(image: NetworkImage(myLinkList[index]),width: 100.0,height: 100.0),
                Container(
                    margin: EdgeInsets.only(left: 10.0),
                  child: Column(children: <Widget>[
                    Text(myList[index],style: TextStyle(fontSize: 20, color: Colors.purple)),
                    Text("Lorem Ipsum is simply dummy text",style: TextStyle(fontSize: 15, color: Colors.lightGreen)),

                  ]),
                )
              ]),
            );
          },
        ),


      )
    );
}
}