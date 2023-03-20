import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewWidget extends StatelessWidget {
  const WebviewWidget({Key? key, required this.controller}) : super(key: key);
  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Enjoy Podcasts'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: WebViewWidget(
          controller: controller,
        ));
  }
}
