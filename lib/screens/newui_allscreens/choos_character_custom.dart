import 'package:flutter/material.dart';

class CustomChooseCharacter extends StatelessWidget {
  const CustomChooseCharacter({Key, this.image, this.onTap, key})
      : super(key: key);

  final String image;
  final VoidCallback onTap;
  // VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //margin: EdgeInsets.only(left: 20, right: 20),
        height: 99,
        width: 99,
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
        child: Center(
            child: Image.asset(
          image,
          height: 70,
          width: 70,
        )),
      ),
    );
  }
}
