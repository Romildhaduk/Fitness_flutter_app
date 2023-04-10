// import 'package:flutter/material.dart';
//
// class TabberPage extends StatefulWidget {
//   const TabberPage({Key key}) : super(key: key);
//
//   @override
//   State<TabberPage> createState() => _TabberPageState();
// }
//
// class _TabberPageState extends State<TabberPage>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;
//
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xffD9D9D9),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Container(
//                 height: 45,
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 1.5),
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(
//                     25.0,
//                   ),
//                 ),
//                 child: TabBar(
//                   controller: _tabController,
//                   indicator: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0xff333333),
//                         blurRadius: 0.0,
//                         spreadRadius: 0.0,
//                         offset: Offset(2, 2),
//                       ),
//                     ],
//                     border: Border.all(width: 1.5),
//                     borderRadius: BorderRadius.circular(
//                       25.0,
//                     ),
//                     color: Color(0xff77ADFF),
//                   ),
//                   labelColor: Colors.black,
//                   unselectedLabelColor: Colors.black,
//                   tabs: [
//                     Tab(
//                       text: "Discover",
//                     ),
//                     Tab(
//                       text: "History",
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0xff333333),
//                                 blurRadius: 0.0,
//                                 spreadRadius: 0.0,
//                                 offset: Offset(
//                                     4.0, 4.0), // shadow direction: bottom right
//                               )
//                             ],
//                             border: Border.all(
//                                 width: 1.5, color: Color(0xff333333)),
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(18),
//                           ),
//                           height: 183,
//                           width: 335,
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 10, left: 10),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       height: 35,
//                                       width: 35,
//                                       decoration: BoxDecoration(
//                                           border: Border.all(width: 1.5),
//                                           shape: BoxShape.circle,
//                                           color: Color(0xffFBAD55)),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Text(
//                                       "Interviewer",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     top: 15, left: 10, right: 10),
//                                 child: Text(
//                                   "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
//                                   style: TextStyle(
//                                       fontSize: 13,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ),
//                               Spacer(),
//                               Divider(
//                                 thickness: 1.5,
//                                 color: Color(0xff333333),
//                                 height: 0.0,
//                               ),
//                               Container(
//                                 padding: EdgeInsets.symmetric(vertical: 15),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffFBAD55),
//                                   borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(15),
//                                       bottomRight: Radius.circular(15)),
//                                 ),
//                                 child: Text(
//                                   "Start Chat",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                                 width: double.infinity,
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//
//                     // second tab bar view widget
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0xff333333),
//                                 blurRadius: 0.0,
//                                 spreadRadius: 0.0,
//                                 offset: Offset(
//                                     5.0, 5.0), // shadow direction: bottom right
//                               )
//                             ],
//                             border: Border.all(
//                                 width: 1.5, color: Color(0xff333333)),
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(18),
//                           ),
//                           height: 183,
//                           width: 335,
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(top: 10, left: 10),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       height: 35,
//                                       width: 35,
//                                       decoration: BoxDecoration(
//                                           border: Border.all(width: 1.5),
//                                           shape: BoxShape.circle,
//                                           color: Color(0xffFBAD55)),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Text(
//                                       "Interviewer",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     top: 15, left: 10, right: 10),
//                                 child: Text(
//                                   "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
//                                   style: TextStyle(
//                                       fontSize: 13,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ),
//                               Spacer(),
//                               Container(
//                                 padding: EdgeInsets.symmetric(vertical: 15),
//                                 alignment: Alignment.center,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(width: 1),
//                                   color: Color(0xffFBAD55),
//                                   borderRadius: BorderRadius.only(
//                                       bottomLeft: Radius.circular(15),
//                                       bottomRight: Radius.circular(15)),
//                                 ),
//                                 child: Text(
//                                   "Start Chat",
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                                 width: double.infinity,
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
