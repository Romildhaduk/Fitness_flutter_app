import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/youtubeplayerpage/youtubepage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../model/list1.dart';

class MeditationScreenList extends StatefulWidget {
  const MeditationScreenList({Key key}) : super(key: key);

  @override
  State<MeditationScreenList> createState() => _MeditationScreenListState();
}

class _MeditationScreenListState extends State<MeditationScreenList> {
  final controller = TextEditingController();
  final controller1 = TextEditingController();

  List<Library> videomeditation = Meditation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlueLightColor1,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Meditation Videos",
            style: GoogleFonts.nunitoSans(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: kBlueLightColor,
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
        ),
        body: SizedBox(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: TextField(
                  onChanged: searchvideomeditation,
                  controller: controller1,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Fitness Video Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: videomeditation.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  youtubedata: videomeditation[i].youtubelink,
                                  youtubeid: videomeditation[i].id,
                                  videos: videomeditation,
                                ),
                              ),
                            );
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Container(
                                      // margin: EdgeInsets.all(8),
                                      height: 200,
                                      width: double.infinity,
                                      child: Image.network(
                                        "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId(videomeditation[i].youtubelink)}/maxresdefault.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      videomeditation[i].name,
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
                        i == (videomeditation.length - 1)
                            ? SizedBox(
                                height: 40,
                              )
                            : SizedBox()
                      ],
                    );
                  },
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  void searchvideomeditation(String query) {
    final Suggetions = Meditation.where((Library) {
      var videotitle = Library.name.toLowerCase();
      final input = query.toLowerCase();
      return videotitle.contains(input);
    }).toList();

    setState(() {
      videomeditation = Suggetions;
    });
  }
}
