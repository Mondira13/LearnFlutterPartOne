import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LocalStorageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LocalStorageState();
  }
}

late SharedPreferences prefs;
String name = "";
String mobile = "";
class _LocalStorageState extends State<LocalStorageScreen> {

  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Scaffold(
            appBar: AppBar(
                title: Text("Local Storage"),
                backgroundColor: Colors.purple),
            body: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 15,right: 15,top: 30),
                  child:  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      // labelText: 'Enter your username',
                      hintText: 'Enter your username',
                    ),
                    autofocus: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                    onChanged: (text) => {
                      setState(() {
                        name = text;
                      }),
                    },
                    textInputAction: TextInputAction.next,
                  )
              ),
              Container(
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  child:  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      // labelText: 'Enter your username',
                      hintText: 'Enter your mobile number',
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.orange),
                    maxLength: 10,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter mobile number';
                      }
                      return null;
                    },
                    onChanged: (text) => {
                      setState(() {
                        mobile = text;
                      }),
                    },
                    textInputAction: TextInputAction.done,
                  )
              ),

              Container(
                width: 300,height: 40,
                margin: EdgeInsets.only(top: 30.0),
                child: RaisedButton(

                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    saveData();
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),
              Container(
                width: 300,height: 40,
                margin: EdgeInsets.only(top: 15.0),
                child: RaisedButton(

                  child: Text(
                    "Fetch Data",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    fetchData();
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),
              Container(
                width: 300,height: 40,
                margin: EdgeInsets.only(top: 15.0),
                child: RaisedButton(

                  child: Text(
                    "Remove Data",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    removeData();
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),



            ],
            )
        )
    );
  }
}

saveData() async {
  await _LocalStorageState.init();
  // prefs.setInt('integer', 21);
  // prefs.setString('string', "Geno Tech");
  // prefs.setDouble('double', 2.53);
  // prefs.setBool('boolean', true);
  // prefs.setStringList('stringList', ['orage', 'apple', 'banana']);
  prefs.setString('name', name);
  prefs.setString('mobile', mobile);
}

fetchData() async {
  // int Intval = prefs.getInt('integer') ?? 0;
  // double Doubleval = prefs.getDouble('double') ?? 0.0;
  // bool Booleanval = prefs.getBool('boolean') ?? false;
  // String Stringval = prefs.getString('string') ?? '';
  // List StringListval = prefs.getStringList('stringList') ?? [];

  String valName = prefs.getString('name') ?? '';
  String valMobile = prefs.getString('mobile') ?? '';
  showToast(valName + " -> "+ valMobile);
}

removeData() async {
  prefs.remove('int');
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.cyan,
      textColor: Colors.white,
      fontSize: 16.0);
}

