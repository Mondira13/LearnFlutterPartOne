import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class OpenGalleryScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OpenGalleryScreenState();
  }
}


class _OpenGalleryScreenState extends State<OpenGalleryScreen>{
  File? _image = null;
  final imagePicker = ImagePicker();

  Future getImage() async{
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text("Access Gallery"),
          backgroundColor: Colors.purple
      ),

      body: Center(
        child:  _image == null ? Text("No Image Selected!!!!",style: TextStyle(fontSize: 25, color: Colors.orangeAccent))
            :
        Image.file(_image!,width: 700,height: 700,),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.image),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
        onPressed: () => { getImage() },
      ),

    );
  }

}
