import 'dart:io';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class GoogleMapScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GoogleMapScreenState();
  }
}


class _GoogleMapScreenState extends State<GoogleMapScreen>{
   String latitudeString ="";
   String longitudeString = "";
   String addressString = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
        title: Text("Google Map"),
        backgroundColor: Colors.purple
    ),

    body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10.0,left: 15.0,right: 15.0,bottom: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen),),
                child: Text(
                  "Fetch Address",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: ()  {
                  getAddress();
                },
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 20.0,left: 15.0,right: 15.0),
              child: Row(
                children: [
                  Text(
                    "Latitude ==> ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),

                  Text(
                    latitudeString,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5.0,left: 15.0,right: 15.0),
              child: Row(
                children: [
                  Text(
                    "Longitude ==> ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),

                  Text(
                    longitudeString,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5.0,left: 15.0,right: 15.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Address ==> ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start
                    ),
                  ),

                  Flexible(
                    flex: 1,
                    child: Text(
                      addressString,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),)
                ],
              ),
            ),





          ],
        ),


      ),
    )






    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  void getAddress() async {
    Position position = await _determinePosition();
    double lat = position.latitude;
    double longi = position.longitude;
    getAddressFromLatLong(lat,longi);

    setState(() {
      latitudeString = lat.toString();
      longitudeString = longi.toString();
    });
  }

  void getAddressFromLatLong(double latitude,double longitude) async{
    List<Placemark> placemark = await placemarkFromCoordinates(latitude, longitude);
    String addressPart1 = placemark[0].toString();
    String addressPart2 = placemark[1].toString();
    String addressPart3 = placemark[2].toString();
    String addressPart4 = placemark[3].toString();
    String addressPart5 = placemark[4].toString();

    setState(() {
      addressString = addressPart1;
    });
  }


  }