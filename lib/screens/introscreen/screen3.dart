import 'package:flutter/material.dart';
import 'package:meditation_app/constantscolor/constants.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
                "assets/images/Workout-amico.png",
              ),
            ),
          ),
          Text(
            "Fitness",
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
