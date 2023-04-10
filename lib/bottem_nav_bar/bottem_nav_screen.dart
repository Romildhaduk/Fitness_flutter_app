import 'package:flutter/material.dart';
import 'package:meditation_app/screens/settings/settingpage.dart';
import 'package:meditation_app/screens/todaypage/todaypage.dart';
import 'package:meditation_app/screens/yogahomepage/home_page_yoga_screen.dart';

class BottemNavBar extends StatefulWidget {
  const BottemNavBar({Key key}) : super(key: key);

  @override
  _BottemNavBarState createState() => _BottemNavBarState();
}

class _BottemNavBarState extends State<BottemNavBar> {
  int pageIndex = 0;

  final List<Widget> pages = [
    TodayPage(),
    HomeScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? Icon(
                          Icons.date_range,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.date_range_sharp,
                          color: Colors.black.withOpacity(0.2),
                        ),
                ),
                pageIndex == 0
                    ? Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? Icon(
                          Icons.fitness_center,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.fitness_center,
                          color: Colors.black.withOpacity(0.2),
                        ),
                ),
                pageIndex == 1
                    ? Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? Icon(
                          Icons.settings,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.settings,
                          color: Colors.black.withOpacity(0.2),
                        ),
                ),
                pageIndex == 2
                    ? Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
