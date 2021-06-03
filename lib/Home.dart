import 'package:flutter/material.dart';
import 'package:youtube_flutter_sample/screens/LibaryScreen.dart';
import 'package:youtube_flutter_sample/screens/OnTheRiseScreen.dart';
import 'package:youtube_flutter_sample/screens/StartScreen.dart';
import 'package:youtube_flutter_sample/screens/SubscriptionsScreen.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> _screens =  [
      StartScreen(),
      OnTheRiseScreen(),
      SubscriptionsScreen(),
      LibaryScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
            "images/youtube.png",
            width: 98,
            height: 22,
        ),
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
      body: _screens[_currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: _currentScreenIndex,
        onTap: (index){
          setState(() {
            _currentScreenIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Inicío",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "Em alta",
            icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
            label: "Inscrições",
            icon: Icon(Icons.subscriptions)
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.folder)
          ),
        ],
      ),
    );
  }
}
