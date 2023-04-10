import 'package:flutter/material.dart';

import 'model_chat.dart';

class BlackDogScreen extends StatefulWidget {
  const BlackDogScreen({Key key}) : super(key: key);

  @override
  State<BlackDogScreen> createState() => _BlackDogScreenState();
}

class _BlackDogScreenState extends State<BlackDogScreen> {
  bool iconchange = false;
  bool pagechange = false;
  bool _toggle = false;
  bool isFirstWhiteUser = false;
  bool isSecondBlackUser = false;
  double isFirstWhiteCount = 0;
  double isSecondCount = 0;
  double _width = 400;
  double _height = 0;
  bool flag = true;

  double _updatestate() {
    setState(() {
      _width = 400;
      _height = 350;
    });
  }

  @override
  Widget build(BuildContext context) {
    isFirstWhiteUser = false;
    isSecondBlackUser = false;
    isFirstWhiteCount = 0;
    isSecondCount = 0;
    return Scaffold(
      backgroundColor: Color(0xff632F2B),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Color(0xff632F2B),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Row(
            children: [
              Image.asset(
                "assets/images/lefteye.png",
                height: 23,
                width: 29,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/nose.png",
                        height: 35,
                        width: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Image.asset("assets/images/righteye.png", height: 23, width: 29),
            ],
          ),
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          width: double.infinity,
          // height: MediaQuery.of(context).size.height / 1,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 17),
                child: Icon(Icons.keyboard_backspace),
              ),
              SizedBox(
                height: 10,
              ),
              // AnimatedContainer(
              //   width: _width,
              //   height: _height,
              //   duration: Duration(seconds: 5),
              //   curve: Curves.easeInBack,
              //
              //   color:  _toggle
              //       ? Colors.blueAccent
              //       : Colors.pink,
              // ),
              Expanded(
                child: Stack(
                  children: [
                    pagechange
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: ChatMessage.length,
                            itemBuilder: (context, i) {
                              if (ChatMessage[i].index == 0) {
                                if (isFirstWhiteCount > 0) {
                                  isFirstWhiteUser = true;
                                }
                                isFirstWhiteCount += 1;
                              }
                              if (ChatMessage[i].index == 1) {
                                if (isSecondCount > 0) {
                                  isSecondBlackUser = true;
                                }
                                isSecondCount += 1;
                              }
                              return Expanded(
                                child: ChatMessage[i].index == 0
                                    ? Container(
                                        margin: EdgeInsets.only(
                                            left: 100, right: 20, top: 10),
                                        // margin: EdgeInsets.only(right: 100, top: 10),
                                        padding: EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: Text(
                                          ChatMessage[i].title,
                                          style: TextStyle(
                                            //color: Color(0xff33333),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                            topRight: (isFirstWhiteUser)
                                                ? Radius.circular(15)
                                                : Radius.zero,
                                          ),
                                          border: Border.all(
                                              color: Color(0xffADADAD),
                                              width: 1),
                                        ),
                                      )
                                    : Container(
                                        margin: EdgeInsets.only(
                                            right: 100, top: 10, left: 20),
                                        padding: EdgeInsets.all(10),
                                        width: double.infinity,
                                        child: Text(
                                          ChatMessage[i].title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFF1E1),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                            topLeft: (isSecondBlackUser)
                                                ? Radius.circular(15)
                                                : Radius.zero,
                                            bottomRight: Radius.circular(15),
                                          ),
                                          border: Border.all(
                                              color: Color(0xffADADAD),
                                              width: 1),
                                        ),
                                      ),
                              );
                            })
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: Suggetionlist.length,
                            itemBuilder: (context, i) {
                              return Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 8, bottom: 10),
                                  // margin: EdgeInsets.only(right: 100, top: 10),
                                  padding: EdgeInsets.all(10),
                                  width: double.infinity,
                                  child: Text(
                                    Suggetionlist[i].title,
                                    style: TextStyle(
                                      //color: Color(0xff33333),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFF1E1),
                                    borderRadius: BorderRadius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                              );
                            }),
                  ],
                ),
              ),
              // AnimatedContainer(
              //   width: _width,
              //   height: _height,
              //   duration: Duration(seconds: 5),
              //   curve: Curves.easeInBack,
              //
              //   color:  _toggle
              //       ? Colors.blueAccent
              //       : Colors.pink,
              // ),
              Container(
                  height: 25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Rectangle 3.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _updatestate();
                        // _toggle = !_toggle;
                        pagechange = !pagechange;
                        iconchange = !iconchange;
                      });
                    },
                    child: iconchange
                        ? Image.asset(
                            "assets/images/uppericon1x.png",
                            color: Color(0xff858585),
                            height: 2,
                            width: 2,
                          )
                        : Image.asset(
                            "assets/images/downarrow1x.png",
                            color: Color(0xff858585),
                            height: 2,
                            width: 2,
                          ),
                  )),
              Divider(
                thickness: 1,
                color: Colors.black,
                height: 0.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: InputBorder.none,
                                  hintText: "Type something..."),
                            )),
                            Image.asset(
                              "assets/images/mike1x.png",
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child:
                                  Image.asset("assets/images/sendmessage.png"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: Text.rich(TextSpan(
                          text: "You have 2 free message left.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff858585),
                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: "Go Premium",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFBAD55)),
                            )
                          ])),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
