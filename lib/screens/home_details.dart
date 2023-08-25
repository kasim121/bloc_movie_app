import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerscreen extends StatefulWidget {
  final String vidoUrl;
  const VideoPlayerscreen({super.key, required this.vidoUrl});

  @override
  State<VideoPlayerscreen> createState() => _VideoPlayerscreenState();
}

class _VideoPlayerscreenState extends State<VideoPlayerscreen> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // ignore: deprecated_member_use
    _videoPlayerController = VideoPlayerController.network(widget.vidoUrl);
    _initializeVideoPlayerFuture =
        _videoPlayerController.initialize().then((value) {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);
      setState(() {});
    });

    super.initState();
  }
@override
  void dispose() {
   _videoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: _initializeVideoPlayerFuture, builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.done){
    return AspectRatio(aspectRatio: _videoPlayerController.value.aspectRatio,
    child: VideoPlayer(_videoPlayerController),
    );
            }else{
    return const Center(
      child: CircularProgressIndicator(),
    );
            }
          }),
    );
  }
}
