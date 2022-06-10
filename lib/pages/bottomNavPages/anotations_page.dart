import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AnotationPage extends StatefulWidget {
  const AnotationPage({Key? key}) : super(key: key);

  @override
  State<AnotationPage> createState() => _AnotationPageState();
}

class _AnotationPageState extends State<AnotationPage> {

  VideoPlayerController? controller;

  @override
  void initState(){
    super.initState();
    controller = VideoPlayerController.network("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4")..initialize().then((_){
      setState((){

      });
    });
    controller!.play();
  }
  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          controller!.value.isInitialized ?
              AspectRatio(
                  aspectRatio: controller!.value.aspectRatio,
                child: VideoPlayer(controller!),
              )
              :
              Container(height: 200, width: double.infinity, child: Center(
                child: CircularProgressIndicator(),
              ),)
        ],
      ),
    );
  }
}
