import 'package:flutter/material.dart';
import 'package:meditation_app/bottem_nav_bar/bottem_nav_screen.dart';
import 'package:meditation_app/screens/intro_screen2/page2.dart';
import 'package:meditation_app/screens/intro_screen2/page3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constantscolor/constants.dart';
import '../intro_screen2/page1.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({Key key}) : super(key: key);

  @override
  State<IntroScreen2> createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  PageController _controller2 = PageController();
  bool onlastpage2 = false;

  _storeOnboardInfo2() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('IntroScreen', isViewed);
    print(prefs.getInt('IntroScreen'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            //scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                onlastpage2 = (index == 2);
              });
            },
            controller: _controller2,
            children: [
              // PageIntro1(),
              PageIntro1(),
              Pageintro2(),
              Pageintro3(),
            ],
          ),
          Container(
            // height: 5,
            // width: 5,
            alignment: Alignment(0, 0.90),
            child: Padding(
              padding: const EdgeInsets.only(left: 150, right: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller2,
                    count: 3,
                    effect: JumpingDotEffect(
                      activeDotColor: kBlueLightColor2,
                      dotColor: Colors.grey.withOpacity(0.40),
                    ),
                  ),
                  onlastpage2
                      ? GestureDetector(
                          onTap: () {
                            _storeOnboardInfo2();
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => BottemNavBar(),
                              ),
                            );
                            _controller2.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Text("Done"),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller2.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Text("Next"),
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
