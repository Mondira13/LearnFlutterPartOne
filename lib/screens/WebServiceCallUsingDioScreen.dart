import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../service/ApiService.dart';
import '../model/PostResponse.dart';
import 'dart:convert';

class WebServiceCallUsingDioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DataFromAPI(),
    );
  }
}

class DataFromAPI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DataFromAPIState();
  }
}

class _DataFromAPIState extends State<DataFromAPI> {
  var isLoading = false;
  List<PostBeautyAndSpa> listOfData = [];

  Future<List<PostBeautyAndSpa>> getListOfPosts() async {
    Dio dio = Dio();
    try {
      final response = await dio.get(ApiService.url);
      PostResponse postResponse = PostResponse.fromJSON(jsonDecode(response.data));
      listOfData = postResponse.beautyAndSpa;
      return listOfData;
    } on DioError catch (e) {
      print(e);
    }
    throw {print("null value")};
  }

  loadData() async {
    setState(() {
      isLoading = true;
    });
    listOfData = await getListOfPosts();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
                title: Text("Web Service Call"),
                backgroundColor: Colors.purple),
            body: isLoading == true
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: listOfData.length,
                    itemBuilder: (context, index) {
                      final item = listOfData[index];
                      // return ListTile(
                      //   title: Text(item.serviceName.toString())
                      // );
                      return Container(
                          margin: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                          child: Row(
                            children: <Widget>[
                              Image(
                                  image: NetworkImage(item.imageUrl.toString()),
                                  width: 100.0,
                                  height: 100.0),
                              Container(
                                margin: EdgeInsets.only(left: 15.0),
                                child: Text(item.serviceName.toString(),
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.brown)),
                              )
                            ],
                          ));
                    })));
  }
}
