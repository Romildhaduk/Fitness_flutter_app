import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/meditation/meditation_screen.dart';
import 'package:meditation_app/screens/model/list1.dart';
import 'package:meditation_app/screens/youtubeplayerpage/youtubepage.dart';
import 'package:meditation_app/widgets/search_bar.dart';

class Exercises extends StatefulWidget {
  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  ///Todo: all session list.
  List<Library> videokengal = kengalExercises;
  List<Library> KengalExercisessecond = kengalExercisessecond;
  List<Library> KengalExercisesthird = kengalExercisethird;
  List<Library> KengalExercisesforth = kengalExerciseforth;
  List<Library> KengalExercisesfive = kengalExercisefive;
  List<Library> KengalExercisessix = kengalExercisesix;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 180, top: 100),
            width: double.infinity,
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
            ),
            child: Center(
                child: SvgPicture.asset(
              "assets/icons/Excrecises.svg",
              height: 100,
              width: 100,
            )),
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
                      "Kengal Exercises",
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
                                  videos: kengalExercises,
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
                                  videos: KengalExercisessecond,
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
                                  videos: KengalExercisesthird,
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
                                  videos: KengalExercisesforth,
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
                                  videos: KengalExercisesfive,
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
                                  videos: KengalExercisessix,
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
