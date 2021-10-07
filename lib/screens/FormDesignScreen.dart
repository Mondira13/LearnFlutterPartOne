import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';


class FormDesignScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormDesignState();
  }
}

  class _FormDesignState extends State<FormDesignScreen> {
    String name = "";
    String address = "";
    String mobile = "";

    @override
    Widget build(BuildContext context) {
      return Material(
          child : Scaffold(
              backgroundColor: Colors.white,
              body: ListView(children: <Widget>[
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

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your address',
                      hintText: 'Type here...',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter address';
                      }
                      return null;
                    },
                    onChanged: (text) => {
                      setState(() {
                        address = text;
                      }),
                    },
                    textInputAction: TextInputAction.next,
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
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
                    margin: EdgeInsets.only(left: 15,right: 15,top: 10),
                    child:  TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueAccent, width: 5.0),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        // labelText: 'Enter your username',
                        hintText: 'Enter your username - 2',
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
                        hintText: 'Enter your username - 3',
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
                        hintText: 'Enter your username - 4',
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
                        hintText: 'Enter your username - 5',
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
                        hintText: 'Enter your username - 6',
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
                        hintText: 'Enter your username - 7',
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
                ),Container(
                    margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    child:  TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blueAccent, width: 5.0),
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        // labelText: 'Enter your username',
                        hintText: 'Enter your username - 8',
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
                  height: 50,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 35.0),
                  child: RaisedButton(

                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      showToast(name + " -> "+ address + " -> "+ mobile);
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    splashColor: Colors.grey,
                  ),
                ),


              ]
              )


          )
      );
    }
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

