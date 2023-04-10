import 'package:flutter/material.dart';
import 'package:meditation_app/constantscolor/constants.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              child: Image.asset(
                "assets/images/dietintro.png",
              ),
            ),
          ),
          Text(
            "Diet",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Let's Start Eat Healthy",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
