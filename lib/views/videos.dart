import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _videoMetaData;
  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: "0SruLQy2pgA",
      flags: const YoutubePlayerFlags(
          enableCaption: true,
          autoPlay: false,
          forceHD: true,
          captionLanguage: 'en',
          controlsVisibleAtStart: true,
          useHybridComposition: true),
    );
    _videoMetaData = const YoutubeMetaData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      onEnterFullScreen: () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      },
      onExitFullScreen: () {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
      },
      player: YoutubePlayer(
        controller: _controller,
        progressIndicatorColor: Colors.amber,
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          title: const Text("Videos"),
        ),
        body: Column(
          children: [
            Text(_videoMetaData.title),
            Text(_videoMetaData.duration.toString()),
            player,
          ],
        ),
      ),
    );
  }
}
