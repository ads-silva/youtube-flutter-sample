import 'package:flutter/material.dart';

class LibaryScreen extends StatefulWidget {
  const LibaryScreen({Key key}) : super(key: key);

  @override
  _LibaryScreenState createState() => _LibaryScreenState();
}

class _LibaryScreenState extends State<LibaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Biblioteca",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
