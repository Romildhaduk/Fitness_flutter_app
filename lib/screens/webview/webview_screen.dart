import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:meditation_app/constantscolor/constants.dart';

class Webviewpage extends StatefulWidget {
  @override
  _WebviewpageState createState() => new _WebviewpageState();
}

class _WebviewpageState extends State<Webviewpage> {
  InAppWebViewController _webViewController;
  String url = "";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: kBlueLightColor,
          title: const Text(
            "Web View",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20,
              )),
        ),
        body: Container(
            child: Column(children: <Widget>[
          // Container(
          //   padding: EdgeInsets.all(20.0),
          //   child: Text(
          //       "CURRENT URL\n${(url.length > 50) ? url.substring(0, 50) + "..." : url}"),
          // ),
          // Container(
          //     padding: EdgeInsets.all(10.0),
          //     child: progress < 1.0
          //         ? LinearProgressIndicator(value: progress)
          //         : Container()),
          Expanded(
            child: Container(
              child: InAppWebView(
                initialUrlRequest:
                    URLRequest(url: Uri.parse("https://www.google.com/")),
                initialOptions: InAppWebViewGroupOptions(
                  crossPlatform: InAppWebViewOptions(
                      // debuggingEnabled: true,
                      ),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  _webViewController = controller;
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
