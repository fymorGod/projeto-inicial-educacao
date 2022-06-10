import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerController? controller;

  const VideoPlayerWidget({
    Key? key,
    this.controller,
}): super(key: key);

  @override
  Widget build(BuildContext context) => controller!.value.isInitialized
      ? Container(alignment: Alignment.topCenter, child: buildVideo(),)
      : Container(
    height: 200 ,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );

  Widget buildVideo() => buildVideoPlayer();
  
  Widget buildVideoPlayer() => AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller)
  );
}
