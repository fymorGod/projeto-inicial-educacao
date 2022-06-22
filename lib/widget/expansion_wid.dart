import 'package:codeone/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../interfaces/atv.dart';

class ExpansionWid extends StatefulWidget {
  const ExpansionWid({Key? key}) : super(key: key);
  @override
  State<ExpansionWid> createState() => _ExpansionWidState();
}

class _ExpansionWidState extends State<ExpansionWid> {

  VideoPlayerController? controller;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState(){
    controller = VideoPlayerController.network("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4");
    _initializeVideoPlayerFuture = controller!.initialize();
    controller!.setLooping(true);
    controller!.setVolume(1.0);
    super.initState();
    //controller!.play();
  }
  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  List<Atv> atvs = [
    Atv(1, "Aula 1", "Aula 1 sobre a legalidade", false),
    Atv(2, "Aula 2", "Aula 1 sobre a legalidade", false),
  ];

  @override
  Widget build(BuildContext context) {
    final isMuted = controller!.value.volume == 0;
    return ExpansionPanelList.radio(
      elevation: 0,

      children: atvs.map((atv){
        return ExpansionPanelRadio(
            backgroundColor: AppStyle.mainColor,
            canTapOnHeader: true,
            value: atv.id,
            headerBuilder: (bc, status) {
              return Container(
                child: Container(
                  padding: EdgeInsets.all(10), child: Row(
                  children: [
                    Container(
                      child: Image.asset('assets/images/play-button.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Text(atv.name)
                  ],
                ),),);
            },body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              return Column(
                children: [
                  AspectRatio(aspectRatio: controller!.value.aspectRatio,
                    child: VideoPlayer(controller!),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                      child: Text(controller!.value.isPlaying ? 'Pause' : 'Play'),
                      onPressed: (){
                        if(controller!.value.isPlaying){
                          controller!.pause();
                        }else{
                          controller!.play();
                        }
                      }
                  )
                ],
              );
            }  else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )
        );
      }).toList(),
    );
  }
}