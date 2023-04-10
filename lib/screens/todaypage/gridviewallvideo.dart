import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/todaypage/today_model_list.dart';
import 'package:meditation_app/screens/youtubeplayerpage/youtubepage.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../model/list1.dart';

class AllvideoPage extends StatefulWidget {
  Cetegarylist c1;

  // final String image;
  // final String title;
  // final List<String> allvideo;

  AllvideoPage({Key, this.c1, key}) : super(key: key);

  @override
  State<AllvideoPage> createState() => _AllvideoPageState();
}

class _AllvideoPageState extends State<AllvideoPage> {
  final controller = TextEditingController();
  final controller1 = TextEditingController();

  List<Library> videodiet = Diet;

  @override
  Widget build(BuildContext context) {
    print("=====>${videodiet}");
    return Scaffold(
      backgroundColor: kBlueLightColor1,
      //backgroundColor: Colors.white,
      // backgroundColor: kBlueLightColor.withOpacity(0.80),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.c1.title,
          style: GoogleFonts.nunitoSans(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kBlueLightColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            FocusScope.of(context).unfocus();
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
            Expanded(
              child: ListView.builder(
                itemCount: widget.c1.allvideo.length,
                itemBuilder: (context, i) {
                  print("=========>${videodiet.length}");
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print("================>${videodiet.length}");
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoScreen(
                                youtubedata: widget.c1.allvideo[i],
                                youtubeid: videodiet[i].id,
                                videos: videodiet,
                                //videolist: videodiet,
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
                              borderRadius: BorderRadius.circular(8),
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
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Container(
                                    // margin: EdgeInsets.all(8),
                                    height: 200,
                                    width: double.infinity,
                                    child: Image.network(
                                      "https://img.youtube.com/vi/${YoutubePlayer.convertUrlToId("${widget.c1.allvideo[i]}")}/maxresdefault.jpg",
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
                                    widget.c1.allvideoname[i],
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
                      i == (videodiet.length - 1)
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
    );
  }

  void searchvideoDiet(String query) {
    final Suggetions = Diet.where((Library) {
      var videotitle = Library.name.toLowerCase();
      final input = query.toLowerCase();
      return videotitle.contains(input);
    }).toList();

    setState(() {
      videodiet = Suggetions;
    });
  }
}
