import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerSampleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VideoPlayerSampleScreenState();
  }
}

class _VideoPlayerSampleScreenState extends State<VideoPlayerSampleScreen> {
  late VideoPlayerController _controller;
  // final isMute = _controller.value.volume == 0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..addListener(() {
        setState(() {});
      })
      // ..setLooping(true)
      ..initialize().then((_) {
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text("Video Player Sample"),
              backgroundColor: Colors.purple),
          body: Container(
              child: ListView(
            children: <Widget>[
              Center(
                child: _controller != null && _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
              ),
              Container(
                width: 330,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "Video loading from network",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    videoLoadFromNetwork();
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),
              Container(
                width: 330,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "Video loading from File",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    pickVideoFile();
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),
              Container(
                width: 330,
                margin: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: RaisedButton(
                  child: Text(
                    "Video loading from Local Asset",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    videoLoadFromAsset();
                  },
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Row(children: <Widget>[
                    IconButton(
                      icon: Icon(
                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.purple,
                      ),
                      iconSize: 50,

                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                    ),

                    IconButton(
                      icon: Icon(
                        _controller.value.volume == 0 ? Icons.volume_mute : Icons.volume_up,
                        color: Colors.purple,
                      ),
                      iconSize: 50,
                      onPressed: () {
                        _controller.setVolume(_controller.value.volume == 0 ? 1: 0);
                      },
                    ),
                  ],

                )
                )

              )

            ],
          )

          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  videoLoadFromNetwork() {
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..addListener(() {
        setState(() {});
      })
      // ..setLooping(true)
      ..initialize().then((_) {
        _controller.play();
      });
  }

  void videoLoadFromAsset() {
    final assetLocation = 'assets/demovideo.mp4';
    _controller = VideoPlayerController.asset(assetLocation)
      ..addListener(() {
        setState(() {});
      })
      // ..setLooping(true)
      ..initialize().then((_) {
        _controller.play();
      });
  }

  void videoLoadFromFile(File file) {
    _controller = VideoPlayerController.file(file)
      ..addListener(() {
        setState(() {});
      })
      // ..setLooping(true)
      ..initialize().then((_) {
        _controller.play();
      });
  }

  Future pickVideoFile() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.video);

    if (result == null) {
      return null;
    } else {
      return videoLoadFromFile(File(result.files.single.path));
    }
  }
}



// Add the following entry to your Info.plist file, located in <project root>/ios/Runner/Info.plist:
//
// <key>NSAppTransportSecurity</key>
// <dict>
// <key>NSAllowsArbitraryLoads</key>
// <true/>
// </dict>