import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../constantscolor/constants.dart';
import 'custom_widget.dart';
import 'model.dart';

class PageIntro1 extends StatefulWidget {
  @override
  _PageIntro1State createState() => _PageIntro1State();
}

class _PageIntro1State extends State<PageIntro1> {
  List<Gender> genders = new List<Gender>();

  // PageController _controller2 = PageController();

  @override
  void initState() {
    super.initState();
    genders.add(new Gender("Yes", false));
    genders.add(new Gender("No", false));
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
            Lottie.asset("animations/mobile_fitness.json"),
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
                "Do you do gym?",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  //fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ListView.separated(
                    // controller: _controller2,
                    separatorBuilder: (context, i) => SizedBox(
                          width: 10,
                        ),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemCount: genders.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        // splashColor: Colors.pinkAccent,
                        onTap: () {
                          setState(() {
                            genders
                                .forEach((gender) => gender.isSelected = false);
                            genders[index].isSelected = true;
                          });
                          // _controller2.nextPage(
                          //     duration: Duration(milliseconds: 500),
                          //     curve: Curves.easeIn);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 160,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(8)),
                              child: CustomRadio(genders[index])),
                        ),
                      );
                    }),
              ),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 15),
            //       child: InkWell(
            //         onTap: () {
            //           toggleIndex(0);
            //         },
            //         child: Container(
            //           alignment: Alignment.center,
            //           height: 70,
            //           width: 160,
            //           decoration: BoxDecoration(
            //             color: selectedIndexes.contains(0)
            //                 ? Colors.white
            //                 : Colors.pink,
            //             // color: Colors.white,
            //             borderRadius: BorderRadius.circular(8),
            //           ),
            //           child: Text(
            //             "Yes",
            //             style: GoogleFonts.lato(
            //               textStyle: Theme.of(context).textTheme.headline4,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w700,
            //               //fontStyle: FontStyle.italic,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Spacer(),
            //     Padding(
            //       padding: const EdgeInsets.only(right: 15),
            //       child: InkWell(
            //         onTap: () {
            //           toggleIndex(1);
            //         },
            //         child: Container(
            //           alignment: Alignment.center,
            //           height: 70,
            //           width: 160,
            //           decoration: BoxDecoration(
            //             color: selectedIndexes.contains(1)
            //                 ? Colors.white
            //                 : Colors.pink,
            //             //  color: Colors.white,
            //             borderRadius: BorderRadius.circular(8),
            //           ),
            //           child: Text(
            //             "No",
            //             style: GoogleFonts.lato(
            //               textStyle: Theme.of(context).textTheme.headline4,
            //               fontSize: 20,
            //               fontWeight: FontWeight.w700,
            //               //fontStyle: FontStyle.italic,
            //             ),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
