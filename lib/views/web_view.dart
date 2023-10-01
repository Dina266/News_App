import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class WebViewScreen extends StatelessWidget {
  final String url;
  const WebViewScreen({super.key, required this.url});
  void navigateBack() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Row(
            children: [
              Text(
                'RealTime',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'News',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
        body: WebViewPlus(
          initialUrl: url,
        ));
  }
}
