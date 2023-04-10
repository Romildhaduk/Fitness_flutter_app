import 'package:flutter/material.dart';
import 'package:meditation_app/constantscolor/constants.dart';
import 'package:meditation_app/screens/todaypage/today_model_list.dart';

import 'customgridview.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({Key key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  List<Cetegarylist> videoallcetegary = [];
  bool icon = true;

  void didChangeDependencies();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoallcetegary.addAll(gridlist);
  }

  final controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextField(
                      onChanged: searchallcetagary,
                      controller: controller1,
                      decoration: InputDecoration(
                        // focusColor: Colors.pink,
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                controller1.clear();
                                videoallcetegary.clear();
                                videoallcetegary.addAll(gridlist);
                                // SystemChannels.textInput.invokeMapMethod("TextInput.hide");
                                FocusScope.of(context).unfocus();
                              });
                            },
                            child: Icon(
                              Icons.close,
                              color: kBlueLightColor,
                            )),
                        prefixIcon: Icon(
                          Icons.search,
                          color: kBlueLightColor,
                        ),
                        // suffixIcon: Icon(Icons.close),
                        hintText: "Fitness Video Search",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(width: 3, color: kBlueLightColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    controller: ScrollController(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.0,
                        mainAxisSpacing: 0.0),
                    itemCount: videoallcetegary.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext ctx, index) {
                      return Expanded(
                        child: CustomGridView(
                          c1: Cetegarylist(
                            image: videoallcetegary[index].image,
                            allvideo: videoallcetegary[index].allvideo,
                            title: videoallcetegary[index].title,
                            allvideoname: videoallcetegary[index].allvideoname,
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void searchallcetagary(String query) {
    final Suggetions = gridlist.where((Library) {
      var videotitle = Library.title.toLowerCase();
      final input = query.toLowerCase();
      return videotitle.contains(input);
    }).toList();

    setState(() {
      videoallcetegary = Suggetions;
    });
  }
}
