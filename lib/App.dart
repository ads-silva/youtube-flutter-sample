import 'package:flutter/material.dart';
import 'package:youtube_flutter_sample/pages/home/Home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}