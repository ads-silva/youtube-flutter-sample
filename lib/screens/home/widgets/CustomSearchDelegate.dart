import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, "");
        },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionsList = [];

    if ( query.isNotEmpty) {
      suggestionsList = [
        "Android", "Flutter", "IOS", "Jogos"
      ].where((text) => text.toLowerCase().startsWith(query.toLowerCase())).toList();

      return ListView.builder(
          itemCount: suggestionsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                close(context, suggestionsList[index]);
              },
              title: Text(suggestionsList[index]),
            );
          }
      );
    } else {
      return Center(
        child: Text("Nenhum resultado para a pesquisa!"),
      );
    }


  }

}