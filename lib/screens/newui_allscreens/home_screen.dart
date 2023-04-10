import 'package:flutter/material.dart';
import 'package:meditation_app/screens/newui_allscreens/panda_screen.dart';
import 'package:meditation_app/screens/newui_allscreens/pengvin.dart';
import 'package:meditation_app/screens/newui_allscreens/tiger_screen.dart';
import 'package:meditation_app/screens/newui_allscreens/white_dog.dart';

import 'choos_character_custom.dart';
import 'dog_black.dart';
import 'lion_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(
            child: Image.asset(
              "assets/images/chat4x.png",
              height: 30,
              width: 30,
            ),
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/Settings.png",
            color: Colors.black,
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 1.5,
            color: Color(0xff333333),
          ),
          Container(
            height: 106,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff333333),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                  offset: Offset(4.0, 4.0), // shadow direction: bottom right
                )
              ],
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Chat GPT AI",
                    style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Image.asset("assets/images/slider4x.png"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Weird",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff858585),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Weird",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff333333),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Brainiac",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff858585),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Choose Character",
              style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 19,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                CustomChooseCharacter(
                  image: "assets/images/lion4.png",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LionAppbarScreen()));
                  },
                ),
                Spacer(),
                CustomChooseCharacter(
                  image: "assets/images/panda4.png",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PandaAppbarScreen()));
                  },
                ),
                Spacer(),
                CustomChooseCharacter(
                  image: "assets/images/tiger4.png",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TigerAppbarScreen()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                CustomChooseCharacter(
                  image: "assets/images/greendog1.png",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PengvinScreen()));
                  },
                ),
                Spacer(),
                CustomChooseCharacter(
                  image: "assets/images/blackdog.png",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlackDogScreen()));
                  },
                ),
                Spacer(),
                CustomChooseCharacter(
                  image: "assets/images/whitedog.png",
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WhiteDogScreen()));
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 68,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff333333),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                  offset: Offset(4.0, 4.0), // shadow direction: bottom right
                )
              ],
              borderRadius: BorderRadius.circular(13),
              color: Color(0xffFFE5C7),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Image.asset("assets/images/gift4.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chat GPT has sent you a premium gift.",
                        style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Open now",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff333333),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
