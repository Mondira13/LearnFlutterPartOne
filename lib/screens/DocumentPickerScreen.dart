import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';


class DocumentPickerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DocumentPickerScreenState();
  }
}

class _DocumentPickerScreenState extends State<DocumentPickerScreen>{
    String fileName= "";
    String fileBytes= "";
    String fileSize= "";
    String fileExtension= "";
    String filePath= "";

  Future getDocumentsFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if(result != null) {
      PlatformFile file = result.files.first;
      // print(file.name);
      // print(file.bytes);
      // print(file.size);
      // print(file.extension);
      // print(file.path);
      setState(() {
        fileName = file.name;
        // fileBytes = file.bytes as String;
        // fileSize = file.size as String;
        fileExtension = file.extension!;
        filePath = file.path;
      });
    } else {
      showToast("User canceled the picker");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text("Access Gallery"),
          backgroundColor: Colors.purple
      ),

      body: Center(
        child:  fileName == null || fileName == "" ? Text("No Document Selected!!!!",style: TextStyle(fontSize: 25, color: Colors.brown))
            :
        //
        Container(
          margin: EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
              Text("File Name ==>   "+ fileName,style: TextStyle(fontSize: 20, color: Colors.lightGreen)),
              // Text(fileBytes,style: TextStyle(fontSize: 20, color: Colors.purpleAccent)),
              // Text(fileSize,style: TextStyle(fontSize: 20, color: Colors.purpleAccent)),
              Text("File Extension ==>   " + fileExtension,style: TextStyle(fontSize: 20, color: Colors.orange)),
              Text("File Path ==>   " + filePath,style: TextStyle(fontSize: 20, color: Colors.purpleAccent))
          ],
        )
      ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.file_copy_rounded),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        onPressed: () => { getDocumentsFile() },
      ),

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
