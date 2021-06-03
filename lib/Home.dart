import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        title: Text("Youtube"),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {

            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
