
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:news_ap/views/home_view.dart';

import 'models/http_exp.dart';


void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const NewsApp());
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
