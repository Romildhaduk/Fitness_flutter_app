import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
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
                width: double.infinity,
              )
            ],
            // children: [...five.map((e) => Column(
            //           children: [
            //             Row(
            //               children: [
            //                 SvgPicture.asset(
            //                   "${e.image}",
            //                   height: 23,
            //                   width: 23,
            //                 ),
            //                 const SizedBox(
            //                   width: 25.0,
            //                 ),
            //                 Expanded(
            //                   child: Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "${e.name}",
            //                         style: const TextStyle(fontSize: 14),
            //                       ),
            //                       GestureDetector(
            //                         onTap: () {
            //                           Get.to(() => const share_page());
            //                         },
            //                         child: const Icon(
            //                           Icons.navigate_next,
            //                           size: 25,
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //               ],
            //             ),
            //             const Divider(
            //               height: 30,
            //               thickness: 1,
            //             ),
            //           ],
            //         ),
            //    ).toList(),
          ),
        ),
      ),
    );
  }
}
