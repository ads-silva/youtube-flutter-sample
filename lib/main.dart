import 'package:flutter/material.dart';
import 'package:youtube_flutter_sample/config/startupConfig.dart';
import 'package:youtube_flutter_sample/screens/home/Home.dart';

Future main() async {
  await startupConfig();
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
