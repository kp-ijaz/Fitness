import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Tipspage extends StatelessWidget {
  Tipspage({super.key});

  final FlickManager flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.asset('assets\videos\tutorial1.mp4'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 3, 12, 44),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 3, 12, 44),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_rounded)),
          title: Text('TIPS'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            )
          ],
        ),
      ),
    );
  }
}
