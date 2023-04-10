import 'package:flutter/material.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/introductionscreen/intro_screen2.dart';
import 'package:meditation_app/screens/introscreen/screen1.dart';
import 'package:meditation_app/screens/introscreen/screen2.dart';
import 'package:meditation_app/screens/introscreen/screen3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  bool onlastpage = false;

  _storeOnboardInfo() async {
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
                onlastpage = (index == 2);
                // },
              });
            },
            controller: _controller,
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Container(
            // height: 5,
            // width: 5,
            alignment: Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => IntroScreen2()));
                    },
                    // onTap: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //       builder: (context) => IntroScreen2()));
                    child: Text("Skip")),
                SmoothPageIndicator(
                  controller: _controller, count: 3,
                  effect: JumpingDotEffect(
                    activeDotColor: kBlueLightColor2,
                    dotColor: Colors.grey.withOpacity(0.40),
                  ),
                  // controller:_controller,
                  // count: 3,
                ),
                onlastpage
                    ? GestureDetector(
                        onTap: () async {
                          await _storeOnboardInfo();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => IntroScreen2()));
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => BottemNavBar()));
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //     builder: (context) => BottemNavBar(),
                          //   ),
                          // );
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("Done"),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("Next"),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
