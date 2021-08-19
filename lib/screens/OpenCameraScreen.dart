import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class OpenCameraScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OpenCameraScreenState();
  }
}


class _OpenCameraScreenState extends State<OpenCameraScreen>{
  File? _image = null;
  final imagePicker = ImagePicker();

  Future takeImage() async{
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text("Take Picture"),
          backgroundColor: Colors.purple
      ),

      body: Center(
        child:  _image == null ? Text("No Image Capture!!!!",style: TextStyle(fontSize: 25, color: Colors.pink))
            :
            Image.file(_image!,width: 700,height: 700,),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt_outlined),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        onPressed: () => { takeImage() },
      ),

    );
  }

}
