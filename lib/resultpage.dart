import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flash_app/mapscreen.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class output extends StatefulWidget {
  static const String id = 'output';
  output(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.url});
  final String bmiResult;
  final String resultText;
  final String url;

  @override
  _outputState createState() => _outputState();
}

class _outputState extends State<output> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      widget.url,
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture =
        _controller.initialize().then((_) => _controller.play());

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'YOUR RESULT',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 70.0, 20.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.resultText.toUpperCase(),
              style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.bmiResult,
              style: TextStyle(
                  fontSize: 90.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            SizedBox(height: 40.0),
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the VideoPlayerController has finished initialization, use
                  // the data it provides to limit the aspect ratio of the video.
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  );
                } else {
                  // If the VideoPlayerController is still initializing, show a
                  // loading spinner.
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => mapScreen(),
                  ),
                );
              },
              child: const Text('Visit us'),
            ),
          ],
        ),
      ),
    );
  }
}
