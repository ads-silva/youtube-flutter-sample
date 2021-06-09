import 'package:flutter/material.dart';
import 'package:youtube_flutter_sample/services/ApiYoutube.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {

    ApiYoutube apiYoutube = ApiYoutube();
    apiYoutube.search("");

    return Container(
      child: Text(
        "Inicío",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );return Container();
  }
}
