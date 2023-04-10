// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:meditation_app/screens/model/list1.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// import '../constants.dart';
//
// class VideoScreen extends StatefulWidget {
//   String youtubedata;
//   int youtubeid;
//
//   VideoScreen({Key key, this.youtubedata, this.youtubeid}) : super(key: key);
//
//   @override
//   _VideoScreenState createState() => _VideoScreenState();
// }
//
// class _VideoScreenState extends State<VideoScreen> {
//   YoutubePlayerController _controller;
//
//   PlayerState _playerState;
//   YoutubeMetaData _videoMetaData;
//   double _volume = 100;
//   bool _muted = false;
//   bool _isPlayerReady = false;
//
//   Library l1 = Library();
//
//   var videoid;
//
//   List<Library> videoyoga = Diet;
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.youtubedata == null) {
//       widget.youtubedata = videoyoga[0].youtubelink;
//       widget.youtubeid = videoyoga[0].id;
//     }
//     videoid = YoutubePlayer.convertUrlToId(widget.youtubedata);
//     _controller = YoutubePlayerController(
//       initialVideoId: videoid,
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         autoPlay: true,
//         disableDragSeek: true,
//         loop: false,
//         isLive: false,
//         forceHD: false,
//         controlsVisibleAtStart: false,
//         // hideControls: true,
//
//         enableCaption: true,
//       ),
//     )..addListener(() {
//         _videoMetaData = const YoutubeMetaData();
//         _playerState = PlayerState.unknown;
//       });
//   }
//
//   void listener() {
//     if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
//       setState(() {
//         _playerState = _controller.value.playerState;
//         _videoMetaData = _controller.metadata;
//       });
//     }
//   }
//
//   @override
//   void deactivate() {
//     _controller.pause();
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: YoutubePlayerBuilder(
//         onEnterFullScreen: () {
//           // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
//           SystemChrome.setPreferredOrientations([
//             DeviceOrientation.landscapeRight,
//             DeviceOrientation.landscapeLeft
//           ]);
//         },
//         onExitFullScreen: () {
//           // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
//           SystemChrome.setPreferredOrientations(
//               [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//         },
//         player: YoutubePlayer(
//           controller: _controller,
//           showVideoProgressIndicator: true,
//           progressIndicatorColor: Color.fromRGBO(68, 138, 255, 1),
//           topActions: <Widget>[
//             const SizedBox(width: 8.0),
//             Expanded(
//               child: Text(
//                 _controller.metadata.title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18.0,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//                 maxLines: 1,
//               ),
//             ),
//             // IconButton(
//           ],
//         ),
//         builder: (context, player) => Scaffold(
//           appBar: AppBar(
//             backgroundColor: kBlueLightColor,
//             centerTitle: true,
//             leading: InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.black,
//                 size: 18,
//               ),
//             ),
//             title: Text(
//               "Video Player",
//               style: TextStyle(color: Colors.black),
//             ),
//           ),
//           body: Column(
//             children: [
//               player,
//               Padding(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     GestureDetector(
//                       onTap: () async {},
//                       child: Container(
//                         child: Row(
//                           children: [
//                             const SizedBox(
//                               width: 12,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   // shrinkWrap: true,
//                   // physics: NeverScrollableScrollPhysics(),
//                   itemCount: videoyoga.length,
//                   itemBuilder: (context, i) {
//                     return (widget.youtubeid != videoyoga[i].id)
//                         ? Column(
//                             children: [
//                               InkWell(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => VideoScreen(
//                                         youtubedata: videoyoga[i].youtubelink,
//                                         youtubeid: videoyoga[i].id,
//                                       ),
//                                     ),
//                                   );
//                                 },
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(
//                                     left: 15,
//                                     right: 15,
//                                   ),
//                                   child: Container(
//                                     margin: EdgeInsets.only(top: 20),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(15),
//                                       // border: Border.all(width: 0.5),
//                                       color: Color(0xFFffffff),
//                                       boxShadow: [
//                                         BoxShadow(
//                                             color: Colors.black26,
//                                             offset: Offset(0, 1),
//                                             blurRadius: 7.0)
//                                       ],
//                                     ),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         ClipRRect(
//                                           borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(15),
//                                             topRight: Radius.circular(15),
//                                           ),
//                                           child: Container(
//                                             // margin: EdgeInsets.all(8),
//                                             height: 200,
//                                             width: double.infinity,
//                                             child: Image.network(
//                                               "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId(videoyoga[i].youtubelink)}/maxresdefault.jpg",
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 10,
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 10),
//                                           child: Text(
//                                             videoyoga[i].name,
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 15,
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 20,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               i == (videoyoga.length - 1)
//                                   ? SizedBox(
//                                       height: 40,
//                                     )
//                                   : SizedBox()
//                             ],
//                           )
//                         : SizedBox();
//                   },
//                 ),
//               ),
//               // Expanded(
//               //     child: ListView.builder(
//               //         physics: const BouncingScrollPhysics(),
//               //         shrinkWrap: true,
//               //         //itemCount: 10,
//               //         itemCount: videoyoga.length,
//               //         itemBuilder: (context, index) {
//               //           return (widget.youtubeid != videoyoga[index].id) //3 !=
//               //               ? GestureDetector(
//               //                   onTap: () {
//               //                     Navigator.push(
//               //                       context,
//               //                       MaterialPageRoute(
//               //                         builder: (context) => VideoScreen(
//               //                           youtubedata:
//               //                               videoyoga[index].youtubelink,
//               //                           youtubeid: videoyoga[index].id,
//               //                         ),
//               //                       ),
//               //                     );
//               //                   },
//               //                   child: Container(
//               //                     margin: EdgeInsets.only(
//               //                         bottom: 10, left: 10, right: 10),
//               //                     height: 200,
//               //                     width: 200,
//               //                     decoration: BoxDecoration(
//               //                       image: DecorationImage(
//               //                           image: NetworkImage(
//               //                             "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId(videoyoga[index].youtubelink)}/sddefault.jpg",
//               //                           ),
//               //                           fit: BoxFit.none,
//               //                           scale: 1.80),
//               //                       borderRadius: BorderRadius.circular(10),
//               //                       border: Border.all(color: Colors.green),
//               //                     ),
//               //                   ),
//               //                 )
//               //               : const SizedBox();
//               //         })),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditation_app/screens/model/list1.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../constantscolor/constants.dart';

class VideoScreen extends StatefulWidget {
  String youtubedata;
  int youtubeid;
  List<Library> videos;

  // List<Library> videolist;
  // List<Library> videodiet = Diet;

  VideoScreen({
    Key key,
    this.youtubedata,
    this.youtubeid,
    this.videos,
  }) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  YoutubePlayerController _controller;

  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;
  List<Library> videodiet = Diet;
  String newvideo;
  int id;

  var videoid;

  // List<Library> videoyoga = Diet;

  @override
  void initState() {
    super.initState();
    if (widget.youtubedata == null) {
      widget.youtubedata = widget.videos[0].youtubelink;
      widget.youtubeid = widget.videos[0].id;
    }
    videoid = YoutubePlayer.convertUrlToId(widget.youtubedata);
    _controller = YoutubePlayerController(
      initialVideoId: videoid,
      flags: const YoutubePlayerFlags(
        hideThumbnail: true,
        mute: false,
        autoPlay: true,
        disableDragSeek: true,
        loop: false,
        isLive: false,
        forceHD: false,
        controlsVisibleAtStart: false,
        // hideControls: true,

        enableCaption: true,
      ),
    )..addListener(() {
        _videoMetaData = const YoutubeMetaData();
        _playerState = PlayerState.unknown;
      });

    // _controller.load(videoid);
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

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
  Widget build(BuildContext context) {
    //ModalRoute.of(context).settings.arguments;

    return YoutubePlayerBuilder(
      onEnterFullScreen: () {
        // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft
        ]);
      },
      onExitFullScreen: () {
        // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      },
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Color.fromRGBO(68, 138, 255, 1),
        topActions: <Widget>[
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          // IconButton(
        ],
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          backgroundColor: kBlueLightColor,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 18,
            ),
          ),
          title: Text(
            "Video Player",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            player,
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    // onTap: () async {},
                    child: Container(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.videos.length,
                itemBuilder: (context, i) {
                  return (widget.youtubeid != widget.videos[i].id)
                      ? Column(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Tapped");
                                widget.youtubedata =
                                    widget.videos[i].youtubelink;
                                widget.youtubeid = widget.videos[i].id;
                                videoid = YoutubePlayer.convertUrlToId(
                                    widget.youtubedata);
                                _controller.load(videoid);
                                setState(() {});
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Container(
                                  margin: EdgeInsets.only(top: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    // border: Border.all(width: 0.5),
                                    color: Color(0xFFffffff),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0, 1),
                                          blurRadius: 7.0)
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Container(
                                          height: 200,
                                          width: double.infinity,
                                          child: Image.network(
                                            "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId(widget.videos[i].youtubelink)}/maxresdefault.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          widget.videos[i].name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            i == (widget.videos.length - 1)
                                ? SizedBox(
                                    height: 40,
                                  )
                                : SizedBox()
                          ],
                        )
                      : SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
