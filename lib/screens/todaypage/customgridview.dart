import 'package:flutter/material.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/todaypage/today_model_list.dart';

import 'gridviewallvideo.dart';

class CustomGridView extends StatelessWidget {
  Cetegarylist c1;

  CustomGridView({
    Key,
    this.c1,
    // this.image,
    // this.title,
    //this.onTap,
    key,
  }) : super(key: key);

  //Cetegarylist c1 = Cetegarylist();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AllvideoPage(
                  c1: c1,
                ),
              ),
            );
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // border: Border.all(width: 0.5),
              color: kBlueLightColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 1),
                    blurRadius: 2.0)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    c1.image,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  c1.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
