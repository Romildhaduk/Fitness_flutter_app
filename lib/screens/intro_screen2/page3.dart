import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:meditation_app/constantscolor/constants.dart';

import 'custom_widget.dart';
import 'model.dart';

class Pageintro3 extends StatefulWidget {
  const Pageintro3({Key key}) : super(key: key);

  @override
  State<Pageintro3> createState() => _Pageintro3State();
}

class _Pageintro3State extends State<Pageintro3> {
  List<Gender> genders3 = new List<Gender>();

  @override
  void initState() {
    super.initState();
    genders3.add(new Gender("Yes", false));
    genders3.add(new Gender("No", false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLightColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("animations/82423-developer-yoga.json"),
            // Lottie.asset("animations/yoga.json"),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Do you do yoga?",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  //fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ListView.separated(
                    separatorBuilder: (context, i) => SizedBox(
                          width: 10,
                        ),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: genders3.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        // splashColor: Colors.pinkAccent,
                        onTap: () {
                          setState(() {
                            genders3
                                .forEach((gender) => gender.isSelected = false);
                            genders3[index].isSelected = true;
                          });
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 8),
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: CustomRadio(genders3[index])),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
