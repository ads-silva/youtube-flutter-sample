import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:youtube_flutter_sample/App.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(App());
}
