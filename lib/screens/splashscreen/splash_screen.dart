import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:meditation_app/bottem_nav_bar/bottem_nav_screen.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/introductionscreen/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int isviewed;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 10), () {});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isviewed = prefs.getInt('IntroScreen');
    isviewed != 0
        ? Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => IntroScreen(),
            ),
          )
        : Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BottemNavBar(),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              "animations/5792-dumble-icon-fitness-health.json",
              reverse: true,
              repeat: true,
              fit: BoxFit.cover,
              height: 100,
              width: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Fitness",
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 35,
              fontWeight: FontWeight.w700,
              //fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
