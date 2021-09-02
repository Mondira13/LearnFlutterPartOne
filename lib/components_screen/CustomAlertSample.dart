import 'package:flutter/material.dart';

class CustomAlertSample extends StatelessWidget {
  final title;

  CustomAlertSample(this.title);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/iconcorrect.png');

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0,right: 50.0),
        child: Container(
            height: 230,
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                      // color: Colors.purple,
                      margin: EdgeInsets.only(top: 20.0),
                      child: Image(
                        image: assetImage,
                        width: 50,
                        height: 50,
                      ),
                    )),
                Expanded(
                    child: Container(
                      // color: Colors.yellow,
                      child: Column(children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                          height: 45,
                          child: RaisedButton(
                            child: Text(
                              "Confirm",
                              style: TextStyle(fontSize: 15),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            color: Colors.red,
                            textColor: Colors.yellow,
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                            splashColor: Colors.grey,
                          ),
                        ),
                      ]),
                    ))
              ],
            ))
      )
    );
  }
}
