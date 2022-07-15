import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class TesteTeste extends StatefulWidget {
  const TesteTeste({Key? key}) : super(key: key);

  @override
  State<TesteTeste> createState() => _TesteTesteState();
}

class _TesteTesteState extends State<TesteTeste> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.network(''
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose(){
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * .9,
          child: chewieController!=null? Padding(
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Chewie(
              controller: chewieController!,
            ),
          ) : Center(
            child: CircularProgressIndicator(),
          )
      ),
    );
  }
}