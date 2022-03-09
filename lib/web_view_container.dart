import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  WebViewContainer(this.url);
  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  _WebViewContainerState(this._url);

  static String videoID = 'qedfeL5dUeg';
  late YoutubePlayerController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Expanded(
          //   child: WebView(
          //       key: _key,
          //       javascriptMode: JavascriptMode.unrestricted,
          //       initialUrl: _url),
          // ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0), 
          
          child:
          YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
            showVideoProgressIndicator: true,
          ),
          ),
        ],
      ),
    );
  }
}
