import 'package:flutter/material.dart';

class MovieWatchingPage extends StatefulWidget {
  @override
  _MovieWatchingPageState createState() => _MovieWatchingPageState();
}

class _MovieWatchingPageState extends State<MovieWatchingPage> {
  bool isPlaying = false;
  bool isFullScreen = false;
  double volume = 0.5;
  bool isSubtitleEnabled = false;

  void playPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void toggleFullScreen() {
    setState(() {
      isFullScreen = !isFullScreen;
    });
  }

  void adjustVolume(double newVolume) {
    setState(() {
      volume = newVolume;
    });
  }

  void toggleSubtitle() {
    setState(() {
      isSubtitleEnabled = !isSubtitleEnabled;
    });
  }

  void skipForward() {
    // Add your logic for skipping forward
  }

  void skipBackward() {
    // Add your logic for skipping backward
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Movie Player
            Container(
              height: isFullScreen ? 300 : 350,
              color: Colors.black,
              child: Stack(
                children: [
                  Center(
                    child: IconButton(
                      icon: Icon(
                        isPlaying ? Icons.pause : Icons.play_arrow,
                        size: 48.0,
                        color: Colors.white,
                      ),
                      onPressed: playPause,
                    ),
                  ),
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Movie Info
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'The It Boys Movie',
                    style: TextStyle(
                      color: Colors.white, // Change the color here
                      fontSize: 20,
                    ),
                  ),

                ],
              ),
            ),

            // Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: skipBackward,
                ),
                IconButton(
                  icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                  onPressed: playPause,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: skipForward,
                ),
                IconButton(
                  icon: isFullScreen
                      ? Icon(Icons.fullscreen_exit)
                      : Icon(Icons.fullscreen),
                  onPressed: toggleFullScreen,
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Open settings menu
                  },
                ),
                IconButton(
                  icon: isSubtitleEnabled
                      ? Icon(Icons.subtitles_off)
                      : Icon(Icons.subtitles),
                  onPressed: toggleSubtitle,
                ),
              ],
            ),

            // Volume Slider
            Slider(
              value: volume,
              onChanged: adjustVolume,
            ),

            Text(
              'Duration: 2:30:00',
              style: TextStyle(
                color: Colors.grey, // Change the color here
                fontSize: 10,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

