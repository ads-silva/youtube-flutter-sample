import 'package:flutter/material.dart';

class OnTheRiseScreen extends StatefulWidget {
  const OnTheRiseScreen({Key key}) : super(key: key);

  @override
  _OnTheRiseScreenState createState() => _OnTheRiseScreenState();
}

class _OnTheRiseScreenState extends State<OnTheRiseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Em alta",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
