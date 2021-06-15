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

    return FutureBuilder<List<Video>>(
      future: null,
      builder: (context, snapshot) {
        switch (snapshot.connectionState){
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if( snapshot.hasData){
              return ListView.separated(
                  itemBuilder: null,
                  separatorBuilder: (context, index) => Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  itemCount: snapshot.data.length
              );
            } else {
              return Center(
                child: Text("Nenhum dado a ser exibido"),
              );
            }
            break;
        }
        return Text("Nenhum dado a ser exibido");
      },
    );
  }
}
