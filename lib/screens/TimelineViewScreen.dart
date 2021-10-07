import 'dart:io';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineViewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimelineViewScreenState();
  }
}

class _TimelineViewScreenState extends State<TimelineViewScreen> {
  bool isLowTileSelected = false;
  bool isMidTileSelected = false;
  bool isHighTileSelected = false;
  bool isExtremeTileSelected = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: Text("Timeline View"), backgroundColor: Colors.purple),
        body: Container(
            height: 70,
            // margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Center(
                child: Row(
              children: <Widget>[



                  Expanded(
                  flex: 1,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isLowTileSelected = true;
                      isMidTileSelected = false;
                      isHighTileSelected = false;
                      isExtremeTileSelected = false;
                    });
                  },
                  child: TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    isFirst: true,
                    indicatorStyle: IndicatorStyle(
                      width: isLowTileSelected ? 20 : 18,
                      height: isLowTileSelected ? 20 : 18,
                      // padding: const EdgeInsets.all(8),
                      indicator: Image.asset(isLowTileSelected ? 'images/ic_red_circle.png' :  'images/ic_grey_circle.png'),
                    ),
                    endChild: Container(
                      constraints: const BoxConstraints(
                        // minWidth: 80,
                      ),
                      // color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text("Low",style: TextStyle(
                            color: isLowTileSelected
                                ? Colors.red
                                : Colors.grey),),
                      ),
                    ),
                    startChild: Container(
                        // color: Colors.amberAccent,
                        ),
                  ),
                ),
                  ),




                Expanded(
                  flex: 1,
                  child:InkWell(
                  onTap: () {
                    setState(() {
                      isLowTileSelected = false;
                      isMidTileSelected = true;
                      isHighTileSelected = false;
                      isExtremeTileSelected = false;
                    });
                  },
                  child: TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    indicatorStyle: IndicatorStyle(
                      width: isMidTileSelected ? 20 : 18,
                      height: isMidTileSelected ? 20 : 18,
                      // padding: const EdgeInsets.all(8),
                      indicator: Image.asset(isMidTileSelected ? 'images/ic_red_circle.png' : 'images/ic_grey_circle.png'),
                    ),
                    endChild: Container(
                      constraints: const BoxConstraints(
                        // minWidth: 80,
                      ),
                      // color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text("Mid",style: TextStyle(
                            color: isMidTileSelected
                                ? Colors.red
                                : Colors.grey),),
                      ),
                    ),
                    startChild: Container(
                        // color: Colors.amberAccent,
                        ),
                  ),
                ),
                ),



                Expanded(
                  flex: 1,
                  child:InkWell(
                  onTap: () {
                    setState(() {
                      isLowTileSelected = false;
                      isMidTileSelected = false;
                      isHighTileSelected = true;
                      isExtremeTileSelected = false;
                    });
                  },
                  child: TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    indicatorStyle: IndicatorStyle(
                      width: isHighTileSelected ? 20 : 18,
                      height: isHighTileSelected ? 20 : 18,
                      indicator: Image.asset(isHighTileSelected ? 'images/ic_red_circle.png': 'images/ic_grey_circle.png'),
                    ),
                    endChild: Container(
                      constraints: const BoxConstraints(
                        // minWidth: 80,
                      ),
                      // color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text("High",style: TextStyle(
                            color: isHighTileSelected
                                ? Colors.red
                                : Colors.grey),),
                      ),
                    ),
                    startChild: Container(
                        // color: Colors.amberAccent,
                        ),
                  ),
                ),
                ),

                Expanded(
                  flex: 1,
                  child:InkWell(
                  onTap: () {
                    setState(() {
                      isLowTileSelected = false;
                      isMidTileSelected = false;
                      isHighTileSelected = false;
                      isExtremeTileSelected = true;
                    });
                  },
                  child: TimelineTile(
                    axis: TimelineAxis.horizontal,
                    alignment: TimelineAlign.center,
                    isLast: true,
                    indicatorStyle: IndicatorStyle(
                      width: isExtremeTileSelected ? 20 : 18,
                      height: isExtremeTileSelected ? 20 : 18,
                      // padding: const EdgeInsets.all(8),
                      indicator: Image.asset(isExtremeTileSelected
                          ? 'images/ic_red_circle.png'
                          : 'images/ic_grey_circle.png'),
                    ),
                    endChild: Container(
                      constraints: const BoxConstraints(
                        // minWidth: 80,
                      ),
                      // color: Colors.lightGreenAccent,
                      child: Center(
                        child: Text(
                          "Extreme",
                          style: TextStyle(
                              color: isExtremeTileSelected
                                  ? Colors.red
                                  : Colors.grey),
                        ),
                      ),
                    ),
                    startChild: Container(
                        // color: Colors.amberAccent,
                        ),
                  ),
                ),
                )



              ],
            )))




    );
  }
}
