import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class readerscreen extends StatefulWidget {
  final int ChID;
  readerscreen(this.ChID);
  // const readerscreen({Key? key}) : super(key: key);

  @override
  State<readerscreen> createState() => _readerscreenState();
}

late WebViewController _controller;

class _readerscreenState extends State<readerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chapter" + widget.ChID.toString()),
      ),
      body: WebView(
        initialUrl: "about:blank",
        onWebViewCreated: (WebViewController _webviewcontroller) {
          _controller = _webviewcontroller;
          if (widget.ChID == 1) {
            loadHTMLxh1();
          } else {
            loadHTMLxh2();
          }
        },
      ),
    );
  }
}

loadHTMLxh1() async {
  String filetext = await rootBundle.loadString("assets/chapter1.html");
  _controller.loadUrl(Uri.dataFromString(
    filetext,
    mimeType: "text/html",
    encoding: Encoding.getByName("utf-8"),
  ).toString());
}

loadHTMLxh2() async {
  String fileTtext = await rootBundle.loadString("assets/chapter2.html");
  _controller.loadUrl(Uri.dataFromString(
    fileTtext,
    mimeType: "text/html",
    encoding: Encoding.getByName("utf-8"),
  ).toString());
}
