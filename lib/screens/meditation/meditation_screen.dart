import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/youtubeplayerpage/youtubepage.dart';
import 'package:meditation_app/widgets/search_bar.dart';

import '../model/list1.dart';

class MeditionScreen extends StatefulWidget {
  @override
  State<MeditionScreen> createState() => _MeditionScreenState();
}

class _MeditionScreenState extends State<MeditionScreen> {
  ///Todo: all session list.
  List<Library> videomeditation = Meditation;
  List<Library> Videomeditationsecond = meditartionsecond;
  List<Library> Videomeditationthird = meditartionthird;
  List<Library> Videomeditationforth = meditartionforth;
  List<Library> Videomeditationfive = meditartionfive;
  List<Library> Videomeditationsix = meditartionsix;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Meditation",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "3-10 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          seassionNum: 1,
                          isDone: true,
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  videos: videomeditation,
                                ),
                              ),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 2,
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  videos: Videomeditationsecond,
                                ),
                              ),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 3,
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  videos: Videomeditationthird,
                                ),
                              ),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 4,
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  videos: Videomeditationforth,
                                ),
                              ),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 5,
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  videos: Videomeditationfive,
                                ),
                              ),
                            );
                          },
                        ),
                        SeassionCard(
                          seassionNum: 6,
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VideoScreen(
                                  videos: Videomeditationsix,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;

  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Session $seassionNum",
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
